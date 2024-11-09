import 'package:flutter/material.dart';

class MyGridBuilder extends StatefulWidget {
  const MyGridBuilder({super.key});

  @override
  State<MyGridBuilder> createState() => _MyGridBuilderState();
}

class _MyGridBuilderState extends State<MyGridBuilder> {
  List icon = [
    Icons.home,
    Icons.message,
    Icons.local_grocery_store,
    Icons.favorite,
    Icons.language,
    Icons.person_outline
  ];
  List title = ['Home', 'Messages', 'Cart', 'Favorite', 'Languages', 'Account'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lazada PRO',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal[700],
      ),
      body: Center(
        child: GridView.builder(
            itemCount: icon.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: (2 / 2),
            ),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.cyan[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      icon[index],
                      size: 35,
                    ),
                    Text(title[index]),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
