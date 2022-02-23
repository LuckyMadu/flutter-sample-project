import 'dart:async';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final StreamController _controller = StreamController();

  //method1
  addStreamData() async {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 2));
      _controller.sink.add(i);
    }
  }

  //method2
  Stream<int> addStreamData2() async*{
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 2));
      yield i;
    }
  }

  //method1 - if used controller, need to close, if not having memory leaks
  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }

  @override
  void initState() {
    super.initState();
    //addStreamData();
    addStreamData2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream'),
      ),
      body: Center(
        // child: StreamBuilder(
        //     stream: _controller.stream,
        //     builder: (context, snapshot) {
        //       if (snapshot.hasError) {
        //         return const Text('Error');
        //       } else if (snapshot.connectionState == ConnectionState.waiting) {
        //         return const CircularProgressIndicator.adaptive();
        //       }
        //       return Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: <Widget>[
        //           const Text(
        //             'Stream Data:',
        //           ),
        //           Text(
        //             '${snapshot.data}',
        //             style: Theme.of(context).textTheme.headline4,
        //           ),
        //         ],
        //       );
        //    }
        //  ),
        child: StreamBuilder(
            stream: addStreamData2().where((event)=> event.isEven),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text('Error');
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator.adaptive();
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Stream Data:',
                  ),
                  Text(
                    '${snapshot.data}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              );
           }
         ),
      ),
    );
  }
}
