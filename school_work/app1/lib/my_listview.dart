import 'package:flutter/material.dart';

class MyListview extends StatefulWidget {
  const MyListview({super.key});

  @override
  State<MyListview> createState() => _MyListviewState();
}

class _MyListviewState extends State<MyListview> {
  var colorValue = [Colors.blue, Colors.purple, Colors.orange];
  var colorSelction;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    colorSelction = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorValue[colorSelction],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'NETFLIX Pro+',
          style: TextStyle(color: Colors.red[400], fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                changeColor(0);
              },
              icon: Icon(
                Icons.radar,
                size: 20,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                changeColor(1);
              },
              icon: Icon(
                Icons.gamepad,
                size: 20,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                changeColor(2);
              },
              icon: Icon(
                Icons.cabin,
                size: 20,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home, size: 25, color: Colors.white),
            title: Text('Home', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.download, size: 25, color: Colors.white),
            title: Text('Downlaod', style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.menu, size: 25, color: Colors.white),
            title: Text('More', style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }

  void changeColor(var index) {
    setState(() {
      colorSelction = index;
    });
  }
}
