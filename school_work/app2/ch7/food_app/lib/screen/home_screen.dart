import 'package:flutter/material.dart';
import 'package:food_app/form_screen.dart';
import 'package:food_app/screen/food_listview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 5.0),
          child: Image.asset(
            'assets/logo/logo.png',
            fit: BoxFit.contain,
          ),
        ),
        title: const Text(
          "Tam Sung Food",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.yellow[700],
      ),
      body: Column(
        children: [
          Container(
            child: FoodListview(),
            height: 500,
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
          ),
          Expanded(
            child: SizedBox(
              width: 100,
              height: 100,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => const FormScreen()));
                  },
                  icon: Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.orange,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
