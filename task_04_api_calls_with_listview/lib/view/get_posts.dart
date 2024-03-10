import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetPosts extends StatefulWidget {
  const GetPosts({super.key});

  @override
  State<GetPosts> createState() => _GetPostsState();
}

class _GetPostsState extends State<GetPosts> {
  var posts = "No data";
  bool isButtonClicked = false;
  bool isLoading = true;
  String url = "https://jsonplaceholder.typicode.com/posts/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Posts"),
        actions: [
          TextButton(
            onPressed: () async {
              var response = await http.get(
                Uri.parse(url),
              );
              setState(() {
                posts = response.body;
                isButtonClicked = true;
                isLoading = false;
              });
              print(isLoading);

              // setState(() {
              //   posts = response.body;
              // });
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
            child: isButtonClicked
                ? isLoading
                    ? const CircularProgressIndicator()
                    : Text(posts)
                : Text(posts), //nodata
          ),
        ),
      ),
    );
  }
}
