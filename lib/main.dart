import 'package:flutter/material.dart';
import 'screens/home_page.dart';
// import 'screens/settings.dart';

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
      //home: const Settings()
      home: const MyHomePage(title: 'Flutter Navigation'),
    );
  }
}


