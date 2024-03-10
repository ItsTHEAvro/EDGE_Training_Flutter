import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetSinglePost extends StatefulWidget {
  const GetSinglePost({super.key});

  @override
  State<GetSinglePost> createState() => _GetSinglePostState();
}

class _GetSinglePostState extends State<GetSinglePost> {
  String posts = "No data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Single Post"),
        actions: [
          TextButton(
            onPressed: () async {
              var response = await http.get(
                Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
              );

              setState(() {
                posts = response.body;
              });
            },
            child: const Text(
              "Get Post",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
        elevation: 2,
        backgroundColor: Colors.amberAccent,
        shadowColor: Colors.black,
      ),
      body: Scrollbar(
        interactive: true,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(posts),
          ),
        ),
      ),
    );
  }
}
