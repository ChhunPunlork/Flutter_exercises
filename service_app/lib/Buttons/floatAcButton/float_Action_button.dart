import 'package:flutter/material.dart';

class floatAcBt extends StatefulWidget {
  const floatAcBt({super.key});

  @override
  State<floatAcBt> createState() => _floatAcBtState();
}
int count = 0;
class _floatAcBtState extends State<floatAcBt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Count: " + count.toString(), style: TextStyle(fontSize: 30),),
            ),
            FloatingActionButton(
              onPressed: (){
                if(count < 10){
                  count++;
                }else{
                  count = 0;
                }
                print("Counter: " + count.toString());
                setState(() {
                });
              },
              child: Icon(Icons.add),
            ),
          ],
        )
      ),
    );
  }
}
