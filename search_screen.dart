import 'package:flutter/material.dart';
import '../services/content_service.dart';
import '../models/content_item.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<ContentItem> _searchResults = [];

  void performSearch() async {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      AnalyticsService.logSearch(query);
      final results = await ContentService.searchContent(query);
      setState(() {
        _searchResults = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search News')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: performSearch,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                final item = _searchResults[index];
                return ListTile(
                  title: Text(item.title),
                  subtitle: Text(item.description),
                  onTap: () {
                    // Open content details
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
