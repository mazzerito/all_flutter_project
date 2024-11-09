import 'package:flutter/material.dart';
import 'package:trip_crud_app/screen_test/login_screen.dart';
import 'package:trip_crud_app/screen_test/signup_screen.dart';
import 'package:trip_crud_app/screens/user_update_screen.dart';
import 'screens/user_create_screen.dart';
import 'screens/user_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserListScreen(),
      // routes: {
      //   '/create-user': (context) => UserCreateScreen(),
      // },
    );
  }
}
