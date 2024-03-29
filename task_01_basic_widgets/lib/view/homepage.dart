import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/splash_logo.png'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                'SingleChildScrollView',
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 25,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      blurRadius: 10,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Next Page",
                    style: TextStyle(
                      fontFamily: 'Times New Roman',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()));
                    },
                    child: const Icon(Icons.arrow_right),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          height: 3 * MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 2 - 10,
                          child: const Card(
                            elevation: 5,
                            surfaceTintColor: Colors.deepPurple,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image(
                                image:
                                    AssetImage('assets/images/splash_logo.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          height: 3 * MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 2 - 10,
                          child: const Card(
                            elevation: 5,
                            surfaceTintColor: Colors.deepPurple,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image(
                                image:
                                    AssetImage('assets/images/splash_logo.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          height: 3 * MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 2 - 10,
                          child: const Card(
                            elevation: 5,
                            surfaceTintColor: Colors.deepPurple,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image(
                                image:
                                    AssetImage('assets/images/splash_logo.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          height: 3 * MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 2 - 10,
                          child: const Card(
                            elevation: 5,
                            surfaceTintColor: Colors.deepPurple,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image(
                                image:
                                    AssetImage('assets/images/splash_logo.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          height: 3 * MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 2 - 10,
                          child: const Card(
                            elevation: 5,
                            surfaceTintColor: Colors.deepPurple,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image(
                                image:
                                    AssetImage('assets/images/splash_logo.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          height: 3 * MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 2 - 10,
                          child: const Card(
                            elevation: 5,
                            surfaceTintColor: Colors.deepPurple,
                            child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image(
                                image:
                                    AssetImage('assets/images/splash_logo.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
