import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _userpassword = TextEditingController();

  get userName => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: _key,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _username,
                      decoration: InputDecoration(
                        labelText: "User name: ",
                      ),
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
                      controller: _userpassword,
                      decoration: InputDecoration(
                        labelText: "User name: ",
                      ),
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
                        if (_key.currentState!.validate()) {
                          String userName = _username.text;
                          String userpassword = _userpassword.text;
                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                    title: Text("Your infomation"),
                                    content: Text(
                                        "Your name: $userName \n Your password: $userpassword"),
                                actions: <Widget>[
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  },
                                      child: Text("Close")
                                  )
                                ],
                              )
                          );
                        }
                      },
                      child: Text("Submit"),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
