import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register page'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Registation page for users'),
            ElevatedButton.icon(
                onPressed: _onBack,
                icon: Icon(Icons.arrow_back),
                label: Text('Back')),
            ElevatedButton.icon(
                onPressed: _onProfile,
                icon: Icon(
                  Icons.ac_unit,
                  color: Color(0xFF34495e),
                ),
                label: Text('profile',
                style: TextStyle(color: Color(0xFF34495e), fontSize: 20),)),
          ],
        ),
      ),
    );
  }

  void _onBack() {
    Navigator.of(context).pop();
  }

  void _onProfile() {
    Navigator.of(context).pushNamed('/profileUser');
  }
}
