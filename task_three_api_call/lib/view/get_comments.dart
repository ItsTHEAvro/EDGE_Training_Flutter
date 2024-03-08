import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetComments extends StatefulWidget {
  const GetComments({super.key});

  @override
  State<GetComments> createState() => _GetCommentsState();
}

class _GetCommentsState extends State<GetComments> {
  String comments = "No data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Comments"),
        actions: [
          TextButton(
            onPressed: () async {
              var response = await http.get(
                Uri.parse(
                    "https://jsonplaceholder.typicode.com/posts/1/comments"),
              );

              setState(() {
                comments = response.body;
              });
            },
            child: const Text(
              "Get Comments",
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
            child: Text(comments),
          ),
        ),
      ),
    );
  }
}
