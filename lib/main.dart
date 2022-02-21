import 'package:flutter/material.dart';
import 'network_request.dart';

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
      home: const HomePage(title: 'Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Click button to retrieve data',
            ),
            ElevatedButton(
              child: const Text('Click Me'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    // put underscore if you are not using context word
                    builder: (_) {
                  return const NetworkRequest(
                    title: 'Network Requests',
                  );
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
