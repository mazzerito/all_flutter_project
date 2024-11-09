import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeletePostScreen extends StatefulWidget {
  @override
  _DeletePostScreenState createState() => _DeletePostScreenState();
}

class _DeletePostScreenState extends State<DeletePostScreen> {
  final TextEditingController idController = TextEditingController();
  Future<void> deletePost(int id) async {
    final response = await http.delete(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'),
    );
    if (response.statusCode == 200) {
      print('Post deleted successfully');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Post Deleted Successfully!')),
      );
    } else {
      throw Exception('Failed to delete post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: idController,
              decoration: const InputDecoration(labelText: 'Post ID'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final id = int.parse(idController.text);
                deletePost(id);
              },
              child: const Text('Delete Post'),
            ),
          ],
        ),
      ),
    );
  }
}
