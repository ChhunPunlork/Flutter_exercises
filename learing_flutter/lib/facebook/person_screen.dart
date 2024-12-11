import 'package:flutter/material.dart';

class PersonScreen extends StatelessWidget {
  PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color customColor = Color(0xFFe7ecf7);

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("Profile", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage("https://updatecrazy.com/wp-content/uploads/2023/10/Spiderman-Miles-Morales-PC-Update-2.1012-Patch-Notes.jpg"),
                    ),
                    Text(
                        "Spider Man",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  alignment: Alignment.center,
                  width: 370,
                  color: customColor,
                  child: Text("Profile Settings", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("     Friends", style: TextStyle(fontSize: 24),),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.network(
                                "http://images5.fanpop.com/image/photos/31800000/Iron-Man-iron-man-3-31868069-1600-1200.jpg",
                                width: 100, // Adjust width as needed
                                height: 100, // Adjust height as needed
                                fit: BoxFit.cover, // Adjust the image fit as needed
                              ),
      
                              Text("Iron Man", style: TextStyle(fontSize: 20),)
                            ],
                          ),
                          Column(
                            children: [
                              Image.network(
                                "http://images5.fanpop.com/image/photos/31800000/Iron-Man-iron-man-3-31868069-1600-1200.jpg",
                                width: 100, // Adjust width as needed
                                height: 100, // Adjust height as needed
                                fit: BoxFit.cover, // Adjust the image fit as needed
                              ),
                              Text("Iron Man", style: TextStyle(fontSize: 20),)
                            ],
                          ),
                          Column(
                            children: [
                              Image.network(
                                "http://images5.fanpop.com/image/photos/31800000/Iron-Man-iron-man-3-31868069-1600-1200.jpg",
                                width: 100, // Adjust width as needed
                                height: 100, // Adjust height as needed
                                fit: BoxFit.cover, // Adjust the image fit as needed
                              ),
                              Text("Iron Man", style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.network(
                                "http://images5.fanpop.com/image/photos/31800000/Iron-Man-iron-man-3-31868069-1600-1200.jpg",
                                width: 100, // Adjust width as needed
                                height: 100, // Adjust height as needed
                                fit: BoxFit.cover, // Adjust the image fit as needed
                              ),
      
                              Text("Iron Man", style: TextStyle(fontSize: 20),)
                            ],
                          ),
                          Column(
                            children: [
                              Image.network(
                                "http://images5.fanpop.com/image/photos/31800000/Iron-Man-iron-man-3-31868069-1600-1200.jpg",
                                width: 100, // Adjust width as needed
                                height: 100, // Adjust height as needed
                                fit: BoxFit.cover, // Adjust the image fit as needed
                              ),
                              Text("Iron Man", style: TextStyle(fontSize: 20),)
                            ],
                          ),
                          Column(
                            children: [
                              Image.network(
                                "http://images5.fanpop.com/image/photos/31800000/Iron-Man-iron-man-3-31868069-1600-1200.jpg",
                                width: 100, // Adjust width as needed
                                height: 100, // Adjust height as needed
                                fit: BoxFit.cover, // Adjust the image fit as needed
                              ),
                              Text("Iron Man", style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      
            ],
          ),
        ),
      ),
    );
  }
}
