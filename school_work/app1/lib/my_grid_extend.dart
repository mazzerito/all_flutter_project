import 'package:flutter/material.dart';

class MyGridExtend extends StatefulWidget {
  const MyGridExtend({super.key});

  @override
  State<MyGridExtend> createState() => _MyGridExtendState();
}

class _MyGridExtendState extends State<MyGridExtend> {
  List icon = [
    Icons.home,
    Icons.search,
    Icons.library_books,
    Icons.favorite,
    Icons.language,
    Icons.person_outline
  ];
  List title = [
    'Home',
    'Search',
    'Library',
    'Favorite',
    'Languages',
    'Account'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rolling Loudy',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber[700],
      ),
      body: GridView.extent(
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        padding: EdgeInsets.all(10.0),
        maxCrossAxisExtent: 200.0,
        children: List.generate(icon.length, (index) {
          return Center(
            child: GridTile(
              footer: Text(
                title[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              child: Icon(icon[index], size: 40, color: Colors.black),
            ),
          );
        }),
      ),
    );
  }
}
