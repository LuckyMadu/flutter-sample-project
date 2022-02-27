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

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String name = 'Lahiru';

  void changeName(String newName) {
    setState(() {
      name = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Building mainpage...');
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Screen2(name: name, changeName: changeName),
    );
  }
}

class Screen2 extends StatelessWidget {
  Screen2({Key? key, required this.name, required this.changeName})
      : super(key: key);

  String name;
  Function changeName;

  @override
  Widget build(BuildContext context) {
    print('Building screen2...');
    return Container(
      child: Screen3(name: name, changeName: changeName),
    );
  }
}

class Screen3 extends StatelessWidget {
  Screen3({Key? key, required this.name, required this.changeName})
      : super(key: key);

  String name;
  Function changeName;

  @override
  Widget build(BuildContext context) {
    print('Building screen3...');
    return Container(
      child: Screen4(name: name, changeName: changeName),
    );
  }
}

class Screen4 extends StatelessWidget {
  Screen4({Key? key, required this.name, required this.changeName})
      : super(key: key);

  String name;
  Function changeName;

  @override
  Widget build(BuildContext context) {
    print('Building screen4...');
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(name),
        ElevatedButton(
          onPressed: () {
            changeName('Maduu');
          },
          child: const Text('Change Data'),
        )
      ],
    ));
  }
}


// class Screen4 extends StatefulWidget {
//   Screen4({Key? key, required this.name}) : super(key: key);

//   String name;

//   @override
//   State<Screen4> createState() => _Screen4State();
// }

// class _Screen4State extends State<Screen4> {
//   @override
//   Widget build(BuildContext context) {
//     print('Building screen4...');
//     return Center(
//         child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(widget.name),
//         ElevatedButton(
//           onPressed: () {
//             setState(() {
//               widget.name = 'Maduu';
//             });
//           },
//           child: const Text('Change Data'),
//         )
//       ],
//     ));
//   }
// }
