import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import '../models/user_model.dart';

class UserService {

final String baseUrl = 'http://192.168.44.1:4000/api'; // Update with your backend URL

  // Create User with optional profile picture
  Future<User?> createUser(User user, XFile? imageFile) async {
    try {
      var request = http.MultipartRequest('POST', Uri.parse('$baseUrl/create-user'));
      request.fields['user_name'] = user.userName;
      request.fields['email'] = user.email;
      if (imageFile != null) {
        var stream = http.ByteStream(imageFile.openRead());
        var length = await imageFile.length();
        request.files.add(http.MultipartFile('profile_picture', stream, length,
            filename: imageFile.name));
      }

      var response = await request.send();
      if (response.statusCode == 201) {
        var jsonData = await response.stream.bytesToString();
        return User.fromJson(json.decode(jsonData));
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  // Fetch all users
  Future<List<User>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/users'));
      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((user) => User.fromJson(user)).toList();
      }
    } catch (e) {
      print(e);
    }
    return [];
  }

  // Update user with optional profile picture
  Future<bool> updateUser(int id, User user, XFile? imageFile) async {
    try {
      var request = http.MultipartRequest('PUT', Uri.parse('$baseUrl/update-user/$id'));
      request.fields['user_name'] = user.userName;
      request.fields['email'] = user.email;
      if (imageFile != null) {
        var stream = http.ByteStream(imageFile.openRead());
        var length = await imageFile.length();
        request.files.add(http.MultipartFile('profile_picture', stream, length,
            filename: imageFile.name));
      }

      var response = await request.send();
      return response.statusCode == 200;
    } catch (e) {
      print(e);
    }
    return false;
  }

  // Delete user
  Future<bool> deleteUser(int id) async {
    try {
      final response = await http.delete(Uri.parse('$baseUrl/delete-user/$id'));
      return response.statusCode == 200;
    } catch (e) {
      print(e);
    }
    return false;
  }
}
