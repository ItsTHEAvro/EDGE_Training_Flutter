import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetPosts extends StatefulWidget {
  const GetPosts({super.key});

  @override
  State<GetPosts> createState() => _GetPostsState();
}

class _GetPostsState extends State<GetPosts> {
  String posts = "No data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Posts Example"),
        actions: [
          TextButton(
            onPressed: () async {
              var response = await http.get(
                Uri.parse("https://jsonplaceholder.typicode.com/posts"),
              );

              setState(() {
                posts = response.body;
              });
            },
            child: const Text(
              "Get Posts",
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
