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
      home: const MyHomePage(title: 'Flutter TextField'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    title.text = "Flutter Text";
    String name = title.text;

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          keyboardType: TextInputType.text,
          controller: title,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color: Colors.white),
            suffixIcon: IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () {
                title.text = '';
              },
            ),
            border: InputBorder.none,
            filled: true,
            hintText: 'Search...',
            hintStyle: const TextStyle(color: Colors.white70),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  cursorColor: Colors.red,
                  maxLength: 8,
                  onChanged: (text) {
                    print(text);
                  },
                  onSubmitted: (text) {
                    print('submiited');
                  },
                  controller: title,
                  obscureText: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24.0)),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                maxLength: 14,
                autofocus: true,
                obscureText: false,
                keyboardType: TextInputType.streetAddress,
                style: TextStyle(fontSize: 24.0),
                enabled: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
