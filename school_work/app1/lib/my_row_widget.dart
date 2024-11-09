import 'package:flutter/material.dart';

class MyRowWidget extends StatefulWidget {
  const MyRowWidget({super.key});

  @override
  State<MyRowWidget> createState() => _MyRowWidgetState();
}

class _MyRowWidgetState extends State<MyRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SUPER ROXY',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, size: 50),
          Icon(Icons.shop_two, size: 50),
          Icon(Icons.settings, size: 50),
        ],
      ),
    );
  }
}
