import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final String baseUrl =
      'http://192.168.44.1:3000/api'; // Your Node.js backend URL

  // Login function
  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'), // Endpoint for login
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      await saveToken(jsonResponse['token']); // Save JWT token locally
      return jsonResponse;
    } else {
      throw Exception('Failed to login');
    }
  }

  // Signup function
  // Future<Map<String, dynamic>> signup(String email, String password, String name) async {
  //   final response = await http.post(
  //     Uri.parse('$baseUrl/users'),  // Endpoint for signup
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'email': email,
  //       'password': password,
  //       'name': name,
  //     }),
  //   );

  //   if (response.statusCode == 201) {
  //     final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
  //     return jsonResponse;
  //   } else {
  //     throw Exception('Failed to signup');
  //   }
  // }
  Future<void> signup(String email, String password, String name) async {
    final String baseUrl = 'http://192.168.114.1:3000/api';
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
        'name': name,
      }),
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 201) {
      print('User signed up successfully!');
    } else {
      print('Failed to sign up. Status code: ${response.statusCode}');
    }
  }

  // Fetch user profile (example of authenticated request)
  Future<Map<String, dynamic>> getProfile() async {
    final String baseUrl = 'http://192.168.114.1:3000/api';
    String? token = await getToken(); // Get token from local storage

    final response = await http.get(
      Uri.parse('$baseUrl/profile'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token', // Send JWT token for authentication
      },
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load profile');
    }
  }

  // Save token in shared preferences
  Future<void> saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('jwt_token', token);
  }

  // Retrieve token from shared preferences
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwt_token');
  }

  // Logout and remove token
  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('jwt_token');
  }
}
