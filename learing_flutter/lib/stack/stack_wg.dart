import 'package:flutter/material.dart';

class StackWg extends StatelessWidget {
   StackWg({super.key});

  var listImg =[
    "https://tse1.mm.bing.net/th?id=OIP.SR718ZE-Qx1Ugx2ZUjXcBgAAAA&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.SR718ZE-Qx1Ugx2ZUjXcBgAAAA&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.SR718ZE-Qx1Ugx2ZUjXcBgAAAA&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.SR718ZE-Qx1Ugx2ZUjXcBgAAAA&pid=Api&P=0&h=220",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Stack && Grid Widget", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        ),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.network("https://tse2.mm.bing.net/th?id=OIP.Qgd_Mkr49_UkoQV-pNA5TgAAAA&pid=Api&P=0&h=220",
              width: double.infinity,
                fit: BoxFit.cover,
                height: 200,
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: -70,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 65,
                    backgroundImage: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.34ibI7Q0G96twDRCyocK_wHaD4&pid=Api&P=0&h=220"),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 70),
          Text("Kungfu Panda".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          Container(
            height: 300,
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                children: List.generate(
                    listImg.length,
                    (index) => Image.network(listImg[index]),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
