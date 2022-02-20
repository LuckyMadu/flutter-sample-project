import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String name = '';

  Widget _builNameField() {
    return TextFormField(
      maxLength: 50,
      decoration: const InputDecoration(hintText: 'Name'),
      //maxLines: 2,
      validator: (text) {
        return HelperValidator.nameValidate(text!);
      },
      onSaved: (text) {
        name = text!;
      },
    );
  }

  Widget _builEmailField() {
    return TextFormField(
      maxLength: 50,
      decoration: const InputDecoration(hintText: 'Email'),
      //maxLines: 2,
      validator: (text) {
        if (text!.isEmpty) {
          return 'Name cannot be empty!';
        }
        return null;
      },
      onSaved: (text) {
        name = text!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //need a widget, thats why we return a widget
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _builNameField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _builEmailField(),
                ),
                const SizedBox(
                  height: 300,
                ),
                Container(
                    child: ElevatedButton(
                  child: const Text('Save'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("valid form");
                      _formKey.currentState!.save();
                    } else {
                      print("Not a valid form");
                    }
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HelperValidator {
  static String? nameValidate(String value) {
    if (value.isEmpty) {
      return 'Name cannot be empty!';
    }

    if (value.length < 3) {
      return 'Name must be at least 3 characters!';
    }
    return null;
  }
}
