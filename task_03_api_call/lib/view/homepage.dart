import 'package:flutter/material.dart';
import 'package:task_three_api_call/view/get_comments.dart';
import 'package:task_three_api_call/view/get_posts.dart';
import 'package:task_three_api_call/view/get_single_post.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GetPosts(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 2),
                          blurRadius: 5,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 240, 185),
                          Colors.amber
                        ],
                      ),
                    ),
                    child: const Text(
                      "Get Posts",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GetSinglePost(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 2),
                          blurRadius: 5,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 240, 185),
                          Colors.amber
                        ],
                      ),
                    ),
                    child: const Text(
                      "Get Single Post",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GetComments(),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 150,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1, 2),
                          blurRadius: 5,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 240, 185),
                          Colors.amber
                        ],
                      ),
                    ),
                    child: const Text(
                      "Get Comments",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/** 
Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GetPosts(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 150,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1, 2),
                      blurRadius: 5,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 255, 240, 185), Colors.amber],
                  ),
                ),
                child: const Text(
                  "Get Posts",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
*/