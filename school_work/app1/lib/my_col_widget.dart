import 'package:flutter/material.dart';

class MyColWidget extends StatefulWidget {
  const MyColWidget({super.key});

  @override
  State<MyColWidget> createState() => _MyColWidgetState();
}

class _MyColWidgetState extends State<MyColWidget> {
  var alignValue = [
    MainAxisAlignment.start,
    MainAxisAlignment.center,
    MainAxisAlignment.end
  ];
  var alignSelection;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    alignSelection = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YouTube Pro+',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red[700],
        actions: [
          IconButton(
              onPressed: () {
                changeAlignment(0);
              },
              icon: Icon(
                Icons.keyboard_double_arrow_left,
                size: 30,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                changeAlignment(1);
              },
              icon: Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                changeAlignment(2);
              },
              icon: Icon(
                Icons.keyboard_double_arrow_right,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: alignValue[alignSelection],
              children: [
                Icon(Icons.home),
                SizedBox(
                  width: 10,
                ),
                Text('Home'),
              ],
            ),
            Row(
              mainAxisAlignment: alignValue[alignSelection],
              children: [
                Icon(Icons.movie_filter),
                SizedBox(
                  width: 10,
                ),
                Text('Shorts'),
              ],
            ),
            Row(
              mainAxisAlignment: alignValue[alignSelection],
              children: [
                Icon(Icons.subscriptions),
                SizedBox(
                  width: 10,
                ),
                Text('Subscriptions')
              ],
            ),
            Row(
              mainAxisAlignment: alignValue[alignSelection],
              children: [
                Icon(Icons.outbox),
                SizedBox(
                  width: 10,
                ),
                Text('Libray'),
              ],
            )
          ],
        ),
      ),
    );
  }

  void changeAlignment(var index) {
    setState(() {
      alignSelection = index;
    });
  }
}
