import 'package:flutter/material.dart';

class Log_screen extends StatelessWidget {
  Log_screen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background1.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize:  40, color: Colors.white),
                  ),
                  Text('''Enter your email address to sign in. Enjoy your food''',
                  style: TextStyle(color: Colors.white, fontSize: 18),),
                  SizedBox(
                    height:10,
                  ),
                  TextFormField(
                    controller: emailController,
                    onChanged: (value){
                    },
                    decoration: InputDecoration(
                      label: Text("Email"),
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.green,
                      hintText: "Enter your email address",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please enter your email";
                      }return null;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text("Password"),
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.green,
                      hintText: "Enter your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please enter your password";
                      }return null;
                    },
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Forgot password", style: TextStyle(color: Colors.white),))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(Colors.green)
                              ),
                              onPressed: (){
                                if(_formKey.currentState!.validate()){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                   SnackBar(
                                       content:Text("Log in seccessed"))
                                  );
                                }
                                String email = emailController.text;
                                String password = passwordController.text;
                                print("Email ${email}");
                                print("Password ${password}");
                              },
                              child: Text("Sign In".toUpperCase(), style: TextStyle(fontSize: 20, color: Colors.white),)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?", style: TextStyle(color: Colors.white),),
                      TextButton(onPressed: (){}, child: Text("Create new account.", style: TextStyle(color: Colors.white)))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text("Or", style: TextStyle(fontSize: 20),),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
