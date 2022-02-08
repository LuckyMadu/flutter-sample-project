import 'package:flutter/material.dart';

main() {
  //runApp(const MyApp());
  runApp(const MyAppTwo());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('Hello world'),
    );
  }
}

class MyAppTwo extends StatelessWidget {
  const MyAppTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: const Center(
          child: Text('Application Body', 
          style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}