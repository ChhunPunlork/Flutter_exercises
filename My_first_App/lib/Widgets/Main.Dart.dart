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
      home: ExampleStatefulWidget(),
    );
  }
}
class ExampleStatefulWidget extends StatefulWidget {
  const ExampleStatefulWidget({super.key});

  @override
  State<ExampleStatefulWidget> createState() => _ExampleStatefulWidgetState();
}

class _ExampleStatefulWidgetState extends State<ExampleStatefulWidget> {
   var isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example stateful widget."),
      ),
      body: Checkbox(
        onChanged: (value){
          setState(() {
            isActive = !isActive;
          });
        },
        value: isActive,
      ),
    );
  }
}

class ExampleStatelessWidget extends StatelessWidget {
  const ExampleStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless example."),
      ),
      body: TextButton(
        onPressed: (){},
        child: Text("Click me"),
      ),
    );
  }
}
