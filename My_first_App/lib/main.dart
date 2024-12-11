import 'package:flutter/material.dart';
import 'package:my_first_app/Practices/collect_screens.dart';
import 'package:my_first_app/Screen/assets/asset_screen.dart';
import 'package:my_first_app/Screen/lg/Login.dart';
import 'package:my_first_app/Screen/main_screen.dart';
import 'package:my_first_app/Widgets/PageView.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  PageviewExample(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lork App"),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You can push this button many times."),
              Text(
                  "${counter.toString()}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter++;
          print("Counter $counter");
          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

