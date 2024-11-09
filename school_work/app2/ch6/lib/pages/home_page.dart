import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home, size: 30, color: Colors.white ,),
        title: Text(
          'Homepage',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome to Homepage!',
                  style: TextStyle(
                  fontSize: 20,
                ),),
          _body(),
        ],
      ),
    );
  }

  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: _openRegister,
            icon: Icon(
              Icons.person_add,
              color: Color(0xFF006ccc),
              size: 25,
            ),
            label: Text(
              'Register',
              style: TextStyle(color: Color(0xFF006ccc), fontSize: 20),
            ),
          ),
          ElevatedButton.icon(
              onPressed: _openProduct,
              icon: Icon(
                Icons.store_outlined,
                color: Color(0xFFcc0066),
                size: 25,
              ),
              label: Text(
                'Shop now',
                style: TextStyle(
                  color: Color(0xFFcc0066),
                  fontSize: 20,
                ),
              )),
        ],
      ),
    );
  }

    void _openRegister() {
    Navigator.of(context).pushNamed('/registerScreen');
  }

  void _openProduct() {
    Navigator.of(context).pushNamed('/productScreen');
  }
}
