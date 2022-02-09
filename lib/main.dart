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
      // body: Container(
      //   color: Colors.red,
      //   width: 300.0,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: const <Widget>[
      //       Text(
      //         'Text 01', 
      //         style: TextStyle(fontSize: 20.0)
      //       ),
      //       Text(
      //         'Text 02', 
      //         style: TextStyle(fontSize: 20.0)
      //       ),
      //       Text(
      //         'Text 03', 
      //         style: TextStyle(fontSize: 20.0)
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
        color: Colors.red,
        height: 300.0,
        child: Row(
         // mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Text 01', 
              style: TextStyle(fontSize: 20.0)
            ),
            const Text(
              'Text 02', 
              style: TextStyle(fontSize: 20.0)
            ),
            const Text(
              'Text 03', 
              style: TextStyle(fontSize: 20.0)
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                 Text(
              'Text 01', 
              style: TextStyle(fontSize: 20.0)
            ),
            Text(
              'Text 02', 
              style: TextStyle(fontSize: 20.0)
            ),
            Text(
              'Text 03', 
              style: TextStyle(fontSize: 20.0)
            ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}