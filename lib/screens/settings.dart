import 'package:flutter/material.dart';
import 'home_page.dart';

// ignore: must_be_immutable
class Settings extends StatelessWidget {
  
  String text = '';

  // ignore: use_key_in_widget_constructors
  Settings(String text) {
    // ignore: prefer_initializing_formals
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Settings Screen'),
          leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pop(
                    context,
                    const MyHomePage(
                      title: '',
                    ));
              })),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
            )
          ],
        ),
      ),
    );
  }
}
