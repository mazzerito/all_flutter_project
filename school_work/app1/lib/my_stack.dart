import 'package:flutter/material.dart';

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Image.network(
              'https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=960'),
          Column(
            children: [
              Text(
                'Discover Your Fantascy Journey',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Icon(
                Icons.location_pin,
                size: 30,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
