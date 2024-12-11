import 'package:flutter/material.dart';

class AccessingState extends StatelessWidget {
  // Define a GlobalKey to access the state of MyFormWidget
  final GlobalKey<MyFormWidgetState> formKey = GlobalKey<MyFormWidgetState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GlobalKey Example')),
        body: Center(
          child: MyFormWidget(key: formKey),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Access MyFormWidgetState methods using the GlobalKey
            formKey.currentState?.validateAndSubmit();
          },
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}

class MyFormWidget extends StatefulWidget {
  MyFormWidget({Key? key}) : super(key: key);

  @override
  MyFormWidgetState createState() => MyFormWidgetState();
}

class MyFormWidgetState extends State<MyFormWidget> {
  final TextEditingController _controller = TextEditingController();
  bool _isValid = false;

  void validateAndSubmit() {
    setState(() {
      _isValid = _controller.text.isNotEmpty;
    });
    if (_isValid) {
      // Process valid form submission
      print('Form is valid');
    } else {
      // Handle invalid form submission
      print('Form is not valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: 'Enter some text',
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: validateAndSubmit,
          child: Text('Submit'),
        ),
      ],
    );
  }
}
