import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Text Example')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Title Text', style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text(
            'This is body text . It should be responsive to the screen size.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
