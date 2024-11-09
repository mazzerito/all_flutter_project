import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _authService = AuthService();
  String _name = '';

  @override
  void initState() {
    super.initState();
    _fetchProfile();
  }

  void _fetchProfile() async {
    try {
      var profileData = await _authService.getProfile();
      setState(() {
        _name = profileData['name'];
      });
    } catch (e) {
      // Handle error, show a message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load profile: ${e.toString()}')),
      );
    }
  }

  void _logout() async {
    await _authService.logout();
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: Center(
        child: _name.isEmpty
            ? CircularProgressIndicator()
            : Text('Welcome, $_name!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
