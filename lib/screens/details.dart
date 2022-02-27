import 'package:flutter/material.dart';
import '../models/Users.dart';

class UserDetail extends StatelessWidget {
  final User user;

  // ignore: use_key_in_widget_constructors
  const UserDetail(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user.name),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(user.name),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(user.index),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(user.avatar),
            )
          ],
        )));
  }
}
