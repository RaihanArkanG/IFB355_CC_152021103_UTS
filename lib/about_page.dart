import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'Aplikasi ini adalah aplilkasi untuk memenuhi UTS pemograman mobile dan hanya sebuah aplikasi yang di buat untuk UTS saja',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
