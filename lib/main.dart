import 'package:flutter/material.dart';

main() {
  //runApp(const MyApp());
  //runApp(const MyAppTwo());
  runApp(const MyAppThree());
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


class MyAppThree extends StatelessWidget {
  const MyAppThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){},
          ),
          actions: <Widget>[
            IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){},
          ),
            IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: (){},
          ),
          ],
          // flexibleSpace: const Icon(
          //   Icons.photo_camera,
          //   size: 75.0,
          //   color: Colors.white38
          // )
           flexibleSpace: Image.asset('assets/back.jpeg', fit: BoxFit.cover)
        ),
       
      ),
    );
  }
}