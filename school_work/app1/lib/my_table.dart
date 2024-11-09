import 'package:flutter/material.dart';

class MyTable extends StatefulWidget {
  const MyTable({super.key});

  @override
  State<MyTable> createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Exocite Plan',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.lime[400],
      ),
      body: Table(
        border: TableBorder.all(),
        children: [
          TableRow(children: [
            Column(children: [
              Icon(Icons.dashboard),
              Text('Dashboard'),
            ]),
            Column(children: [
              Icon(Icons.preview),
              Text('Proccess'),
            ]),
            Column(children: [
              Icon(Icons.explore),
              Text('Explore'),
            ]),
          ]),
          TableRow(children: [
            Icon(
              Icons.verified,
              size: 30,
            ),
            Icon(
              Icons.verified,
              size: 30,
            ),
            Icon(
              Icons.verified,
              size: 30,
            ),
          ]),
        ],
      ),
    );
  }
}
