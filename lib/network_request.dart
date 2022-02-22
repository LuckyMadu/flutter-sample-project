import 'package:flutter/material.dart';

class NetworkRequest extends StatefulWidget {
  const NetworkRequest({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<NetworkRequest> createState() => _NetworkRequestState();
}

class _NetworkRequestState extends State<NetworkRequest> {
  //generic return type
  Future<String> getData() async {
    // get user email
    String email = await Future.delayed(const Duration(seconds: 3), () {
      return 'lahiru@gmail.com';
     // throw Exception('server down');
    });
    return email;
  }

  Future<void> getNetworkRequest() async {
    print(await getData());
  }

  @override
  void initState() {
    super.initState();
    getNetworkRequest();
    print("printed");
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
