import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void goToNextPage(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(255, 121, 87, 180),
              Color.fromARGB(255, 103, 58, 183),
              Color.fromARGB(255, 85, 34, 172),
              Color.fromARGB(255, 103, 58, 183),
              Color.fromARGB(255, 121, 87, 180),
            ],
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const Image(
              image: AssetImage('assets/images/splash_logo.png'),
              width: 150,
              height: 150,
            ),
          ),
          Text(
            "Flutter Task 1".toUpperCase(),
            style: const TextStyle(
              fontFamily: 'Micro5',
              fontSize: 40,
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Next Page",
                style: TextStyle(
                  fontFamily: 'Micro5',
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  goToNextPage(context);
                },
                child: const Icon(Icons.arrow_right),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
