import 'package:flutter/material.dart';
import 'news_screen.dart';
import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NileTide')),
      body: NewsScreen(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('News'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => NewsScreen())),
            ),
            ListTile(
              title: Text('Search'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SearchScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
