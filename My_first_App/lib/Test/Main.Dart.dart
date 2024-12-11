import 'package:flutter/material.dart';
import 'package:my_first_app/main.dart';
void main(){
  runApp(RootWidget());
}
class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color(0xfff6f7f7),
        title: Text("Lork Testing App!"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xfff6f7f7),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.blue,
                offset: Offset(-10, -10),
                blurRadius: 30,
              )
            ]
          ),
          width: 350,
          height: 700,
          child: Image.network("https://organicbeautyandskin.com/wp-content/uploads/2019/10/organic-skincare-kit.png"),
        ),
      ),
    );
  }
}
