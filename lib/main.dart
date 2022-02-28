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
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data here'),
      ),
      body: Screen2()
    );
  }
}

class Screen2 extends StatelessWidget {
  Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building screen2...');
    return Container(
      child: Screen3(),
    );
  }
}

class Screen3 extends StatelessWidget {
  Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building screen3...');
    return Container(
      child: Screen4(),
    );
  }
}

class Screen4 extends StatelessWidget {
  Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building screen4...');
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('data here'),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Change Data'),
        )
      ],
    ));
  }
}

class MyData extends ChangeNotifier {
  String _name = "lahiru";

  void changeName(String name) {
    _name = name;
    notifyListeners();
  }

  String get name => _name;
}
