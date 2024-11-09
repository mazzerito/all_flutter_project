import 'package:flutter/material.dart';

class DetailPost extends StatefulWidget {
  final Map post;
  DetailPost({
    super.key,
    required this.post,
  });

  @override
  State<DetailPost> createState() => _DetailPostState();
}

class _DetailPostState extends State<DetailPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.post['title'],
        ),
        backgroundColor: Color(0xffF98866),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.dark_mode),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    widget.post['title'],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Text(
              widget.post['body'],
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
