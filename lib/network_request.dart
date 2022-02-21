import 'package:flutter/material.dart';

class NetworkRequest extends StatefulWidget {
  const NetworkRequest({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<NetworkRequest> createState() => _NetworkRequestState();
}

class _NetworkRequestState extends State<NetworkRequest> {
  //simulate network request
  void getData() async {
    // get user email
    await Future.delayed(const Duration(seconds: 3), () {
      print('lahiru@gmail.com');
    });

    Future.delayed(const Duration(seconds: 2), () {
      print('name: lahiru, age: 20');
    });

    print("final step");
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'GETTING DATA',
            ),
          ],
        ),
      ),
    );
  }
}
