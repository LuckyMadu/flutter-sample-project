import 'package:flutter/material.dart';
import 'home_page.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Settings Screen'),
          leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pop(context, const MyHomePage(title: '',));
              })),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Settings Body',
            )
          ],
        ),
      ),
    );
  }
}
