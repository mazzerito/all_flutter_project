import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restful_api/screen/detail_post.dart';
import 'dart:convert';
import 'add_post.dart';
import 'edit_post.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List posts = [];
  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      setState(() {
        posts = jsonDecode(response.body);
      });
    } else {
      throw Exception('Failed to load posts');
    }
  }

  Future<void> deletePost(int id) async {
    final response = await http
        .delete(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Post Deleted Successfully!')),
      );
      fetchPosts(); // Refresh the list
    } else {
      throw Exception('Failed to delete post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts List'),
        backgroundColor: const Color(0xffF98866),
        leading: const Icon(Icons.podcasts),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Mr. Reaksa Yi'),
                Text('64010914606'),
              ],
            ),
          ),
        ],
      ),
      body: posts.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 3,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPost(
                                    post: post,
                                  )),
                        );
                      },
                      title: Text(
                        post['title'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // subtitle: Text(post['body']),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.edit,
                              color: Color(0xff375E97),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      EditPostScreen(post: post),
                                ),
                              ).then((_) =>
                                  fetchPosts()); // Refresh list after edit
                            },
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Color(0xffF52549),
                            ),
                            onPressed: () {
                              deletePost(post['id']);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPostScreen()),
          ).then((_) => fetchPosts()); // Refresh list after adding new post
        },
        child: Icon(
          Icons.add,
          color: Colors.orange[800],
        ),
      ),
    );
  }
}
