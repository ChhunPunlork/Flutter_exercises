import 'package:flutter/material.dart';
void main(){
  runApp(LearnContainerScreen());
}
class LearnContainerScreen extends StatelessWidget {
  const LearnContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: ContainerScreen(),
    );
  }
}
class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6e1eb),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xfff6f7f7),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.yellow,
                offset: Offset(-10, -5),
                spreadRadius: 5,
                blurRadius: 10,
              )
            ]
          ),
          width: 300,
          height: 340,
          child: Image.network("https://res.cloudinary.com/beleza-na-web/image/upload/w_1500,f_auto,fl_progressive,q_auto:eco,w_1800,c_limit/e_trim/v1/imagens/product/82709/74e85002-9d17-4783-9a29-140d30618076-82709-pai-75235-75234-75237-75238.png"),
        ),
      ),
    );
  }
}
