import 'package:flutter/material.dart';
void main(){
  runApp(RootWidget());
}
class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColumnExampleScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Lork App Row!"),
      ),
      body : Container(
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              color: Colors.green,
              child: Text("Container 1", style: TextStyle(color: Colors.white),),
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Text("Container 2", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
class ColumnExampleScreen extends StatelessWidget {
  const ColumnExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column example"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    child: Text("Container 1", style: TextStyle(color: Colors.white),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                    child: Text("Container 2", style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


