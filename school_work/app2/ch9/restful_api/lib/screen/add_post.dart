import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddPostScreen extends StatefulWidget {
  @override
  _AddPostScreenState createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  Future<void> createPost(String title, String body) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
        'body': body,
      }),
    );
    if (response.statusCode == 201) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Post Created Successfully!')),
      );
      Navigator.pop(context); // Go back to the previous screen after adding
    } else {
      throw Exception('Failed to create post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Add Post'),
        backgroundColor: const Color(0xffF98866),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            const SizedBox(height: 5),
            TextField(
              controller: bodyController,
              decoration: const InputDecoration(labelText: 'Body'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final title = titleController.text;
                final body = bodyController.text;
                createPost(title, body);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(const Color(0xffFFF2D7)),
              ),
              child: const Text('Create Post'),
            ),
          ],
        ),
      ),
    );
  }
}
