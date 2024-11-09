import 'package:flutter/material.dart';
import 'package:trip_crud_app/screens/user_create_screen.dart';
import '../models/user_model.dart';
import '../services/user_service.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final UserService _userService = UserService();
  late Future<List<User>> _users;

  @override
  void initState() {
    super.initState();
    _users = _userService.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User List')),
      body: FutureBuilder<List<User>>(
        future: _users,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No users found'));
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final user = snapshot.data![index];
              return ListTile(
                title: Text(user.userName),
                subtitle: Text(user.email),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () async {
                    bool success = await _userService.deleteUser(user.id!);
                    if (success) {
                      setState(() {
                        _users = _userService.fetchUsers();
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('User deleted')),
                      );
                    }
                  },
                ),
              );
            },
            
          );
          
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserCreateScreen()),
          );})
    );
  }
}
