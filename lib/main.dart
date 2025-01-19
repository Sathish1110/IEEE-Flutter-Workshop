import 'package:flutter/material.dart';
import 'task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 254, 255, 255),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Profile',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'These are the informations you provided while creating account',
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                  child: Container(
                width: 330.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: const Color.fromARGB(255, 6, 6, 6)),
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/profile2.jpg'),
                    ),
                    SizedBox(
                      height: 08.0,
                    ),
                    Text(
                      "Sathish",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "11",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "100",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                            Text("Likes",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.black,
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the SubPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SubPage()),
                    );
                  },
                  child: Text('Go to Sub Page'),
                ),
              ),
            ],
          ),
        ));
  }
}
