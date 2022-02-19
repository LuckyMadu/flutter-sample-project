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
      home: const MyHomePage(title: 'Flutter ListView'),
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

  var items = List<String>.generate(100, (index) => 'Item $index');
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: ListView(
      //   children: <Widget>[
      //     Container(
      //       height: 200,
      //       color: Colors.white
      //     ),
      //     Container(
      //       height: 200,
      //       color: Colors.grey
      //     ),
      //     Container(
      //       height: 200,
      //       color: Colors.orange
      //     ),
      //     Container(
      //       height: 200,
      //       color: Colors.red
      //     ),
      //   ]
      // )
      // body: Container(
      //   child: ListView(
      //     scrollDirection:  Axis.vertical,
      //     children: <Widget>[
      //       ListTile(
      //         leading: const Icon(Icons.brightness_auto),
      //         title: const Text('Brightness Auto'),
      //         subtitle: const Text('Change Brightness'),
      //         trailing: const Icon(Icons.menu),
      //         onTap: (){},
      //       ),
      //       const Divider(),
      //       ListTile(
      //         leading: const Icon(Icons.image),
      //         title: const Text('Image'),
      //         subtitle: const Text('Change Image'),
      //         trailing: const Icon(Icons.menu),
      //         onTap: (){},
      //       ),
      //       const Divider(),
      //        ListTile(
      //         leading: const Icon(Icons.image),
      //         title: const Text('Settings'),
      //         onTap: (){},
      //       ),
      //     ]
      //   )
    //  body: SizedBox(
    //    height: 200,
    //    child: ListView(
    //     scrollDirection:  Axis.horizontal,
    //     children: <Widget>[
    //       Container(
    //         width: 100.0,
    //         height: 200,
    //         color: Colors.grey
    //       ),
    //       Container(
    //         width: 100.0,
    //         height: 200,
    //         color: Colors.white
    //       ),
    //       Container(
    //         width: 100.0,
    //         height: 200,
    //         color: Colors.red
    //       ),
    //       Container(
    //         width: 100.0,
    //         height: 200,
    //         color: Colors.orange
    //       ),
    //     ]
    //       ),
    //  )
     body: ListView.builder(
       itemCount: items.length,
       itemBuilder: (context, index){
         return ListTile(
           title: Text(items[index]),
         );
       },  
     )   
    );
  }
}
