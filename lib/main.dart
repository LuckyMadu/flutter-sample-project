import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Title')
      ),
      body: Container(
        //margin: const EdgeInsets.all(20.0), //margin
        margin: const EdgeInsets.only(top:100.0), //margin
        //padding: const EdgeInsets.all(10.0), //padding
        padding: const EdgeInsets.symmetric(horizontal: 20.0), //padding
        transform: Matrix4.rotationZ(0.1),
        alignment: Alignment.bottomRight,
        height: 200.0,
        width: double.infinity,
        color: Colors.pink,
        child: const Text('Application body', style: TextStyle(fontSize: 24.0))
      ),
    );
  }
}