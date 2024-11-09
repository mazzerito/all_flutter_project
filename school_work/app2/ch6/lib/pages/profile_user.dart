import 'package:flutter/material.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('My profile'),
        backgroundColor: Color(0xFF76d7c4),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Center(child: Text('Information!')),
            ElevatedButton.icon(onPressed: _onBack, icon: Icon(Icons.arrow_back_ios_new), label: Text('Back')),
            ElevatedButton.icon(onPressed: _onBackHome, icon: Icon(Icons.arrow_back_ios_new), label: Text('Back Home')),
      ],),
      
    );
  }

  void _onBack(){
    Navigator.of(context).pop();
  }

  void _onBackHome(){
    Navigator.of(context).popUntil(ModalRoute.withName('/'));
  }
}