import 'package:app1/my_col_widget.dart';
import 'package:app1/my_grid_builder.dart';
import 'package:app1/my_grid_extend.dart';
import 'package:app1/my_gridview.dart';
import 'package:app1/my_listview.dart';
import 'package:app1/my_row_widget.dart';
import 'package:app1/my_stack.dart';
import 'package:app1/my_table.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  List pages = [
    MyRowWidget(),
    MyColWidget(),
    MyListview(),
    MyGridview(),
    MyGridBuilder(),
    MyGridExtend(),
    MyTable(),
    MyStack(),
  ];
  var pageSelection;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageSelection = 0;
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.brown[900],
    actions: [
      Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            IconButton(
              onPressed: () {
                changePageSelection(0);
              },
              icon: Icon(Icons.looks_one, size: 20, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                changePageSelection(1);
              },
              icon: Icon(Icons.looks_two, size: 20, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                changePageSelection(2);
              },
              icon: Icon(Icons.looks_3, size: 20, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                changePageSelection(3);
              },
              icon: Icon(Icons.looks_4, size: 20, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                changePageSelection(4);
              },
              icon: Icon(Icons.looks_5, size: 20, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                changePageSelection(5);
              },
              icon: Icon(Icons.looks_6, size: 20, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                changePageSelection(6);
              },
              icon: Icon(Icons.seven_k, size: 20, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                changePageSelection(7);
              },
              icon: Icon(Icons.eight_k, size: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    ],
  ),
  body: pages[pageSelection],
);
}

  void changePageSelection(var index) {
    setState(() {
      pageSelection = index;
    });
  }
}
