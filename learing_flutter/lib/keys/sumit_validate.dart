import 'package:flutter/material.dart';

class SmVls extends StatelessWidget {
  SmVls({super.key});

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _userPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Screen",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Form(
              key: _globalKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _userName,
                    decoration: InputDecoration(labelText: "User name"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your name";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _userPassword,
                    decoration: InputDecoration(labelText: "User password"),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_globalKey.currentState!.validate()) {
                          String userName = _userName.text;
                          String userPassword = _userPassword.text;
                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                    title: Text("Form submitted"),
                                    content: Text(
                                        "User name: $userName \n User password: $userPassword"),
                                    actions: <Widget>[
                                      TextButton(
                                          onPressed: (){
                                            Navigator.pop(context);
                                          }, child: Text("Close"))
                                    ],
                                  ));
                        }
                      },
                      child: Text("Submit"))
                ],
              ))
        ],
      ),
    );
  }
}
