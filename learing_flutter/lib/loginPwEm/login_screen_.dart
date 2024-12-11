import 'dart:js_interop';

import 'package:flutter/material.dart';

class LoginScreenPWEM extends StatefulWidget {
  const LoginScreenPWEM({super.key});

  @override
  State<LoginScreenPWEM> createState() => _LoginScreenPWEMState();
}

class _LoginScreenPWEMState extends State<LoginScreenPWEM> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String password = _passwordController.text;
                setState(() {
                  print("Email: $email, Password: $password");
                });
                // Implement your logic for checking credentials and agreement
                // For simplicity, you can navigate to the main app screen if credentials are valid
                Navigator.pushReplacementNamed(context, '/mainScreen');
              },
              child: Text('Agree'),
            ),
          ],
        ),
      ),
    );
  }
}
