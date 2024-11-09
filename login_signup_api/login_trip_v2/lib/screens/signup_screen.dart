import 'package:flutter/material.dart';
import 'package:login_trip_v2/services/auth_service.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final AuthService _authService = AuthService();

  void _signup(BuildContext context) async {
    try {
      var userData = await _authService.signup(
        _emailController.text,
        _passwordController.text,
        _nameController.text,
      );
      // Navigate to home page after successful signup
      Navigator.pushReplacementNamed(context, '/home');
    } catch (e) {
      // Handle signup error, show a message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Signup failed: ${e.toString()}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _signup(context),
              child: Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
