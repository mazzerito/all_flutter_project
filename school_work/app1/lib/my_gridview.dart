import 'package:flutter/material.dart';

class MyGridview extends StatefulWidget {
  const MyGridview({super.key});

  @override
  State<MyGridview> createState() => _MyGridviewState();
}

class _MyGridviewState extends State<MyGridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Disney Pro',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo[900],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(50, (index) {
          return Card(
            color: Colors.indigo[100],
            child: Center(
              child: Text(index.toString()),
            ),
          );
        }),
      ),
    );
  }
}
