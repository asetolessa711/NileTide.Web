import 'package:flutter/material.dart';

class AdWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90, // Height for web ads
      child: Center(
        child: Text(
          'Your Ad Here',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}
