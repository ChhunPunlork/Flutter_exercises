import 'package:flutter/material.dart';

class globalKey extends StatelessWidget {
  // GlobalKey to manage focus between text fields
  final GlobalKey<FormFieldState<String>> _firstFieldKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _secondFieldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus Management Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Focus Management Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                key: _firstFieldKey,
                decoration: InputDecoration(
                  labelText: 'First Field',
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_secondFieldKey.currentContext!.findRenderObject() as FocusNode);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                key: _secondFieldKey,
                decoration: InputDecoration(
                  labelText: 'Second Field',
                ),
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
