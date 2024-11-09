import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EditPostScreen extends StatefulWidget {
  final Map post;
  EditPostScreen({required this.post});
  @override
  _EditPostScreenState createState() => _EditPostScreenState();
}

class _EditPostScreenState extends State<EditPostScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  @override
  void initState() {
    super.initState();
    titleController.text = widget.post['title'];
    bodyController.text = widget.post['body'];
  }

  Future<void> updatePost(int id, String title, String body) async {
    final response = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
        'body': body,
      }),
    );
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Post Updated Successfully!')),
      );
      Navigator.pop(context); // Go back to the previous screen after updating
    } else {
      throw Exception('Failed to update post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Post'),
        backgroundColor: Color(0xffF98866),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: bodyController,
              decoration: InputDecoration(labelText: 'Body'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final id = widget.post['id'];
                final title = titleController.text;
                final body = bodyController.text;
                updatePost(id, title, body);
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Color(0xffFFF2D7))),
              child: Text(
                'Update Post',
                style: TextStyle(
                  color: Color(0xff375E97),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
