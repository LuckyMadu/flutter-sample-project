import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  String name = 'Lahiru';

  @override
  Widget build(BuildContext context) {
    print('Building mainpage...');
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Screen2(name:name),
    );
  }
}

class Screen2 extends StatelessWidget {
  Screen2({Key? key, required this.name}) : super(key: key);

  String name;

  @override
  Widget build(BuildContext context) {
    print('Building screen2...');
    return Container(
      child: Screen3(name:name),
    );
  }
}

class Screen3 extends StatelessWidget {
  Screen3({Key? key,required this.name}) : super(key: key);

  String name;

  @override
  Widget build(BuildContext context) {
    print('Building screen3...');
    return Container(
      child: Screen4(name:name),
    );
  }
}

class Screen4 extends StatelessWidget {
   Screen4({Key? key,required this.name}) : super(key: key);

 String name;

  @override
  Widget build(BuildContext context) {
    print('Building screen4...');
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(name),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Change Data'),
        )
      ],
    ));
  }
}
