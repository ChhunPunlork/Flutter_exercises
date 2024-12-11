import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(right: 70),
          child: Center(
            child: Text("Notifications", style: TextStyle(fontSize: 20),),
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              //1
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.notifications_none_outlined),
                  SizedBox(width: 10,),
                  Icon(Icons.light_mode_outlined, color: Colors.yellow,size: 30,),
                  Text("Sale to 70%", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                  Icon(Icons.local_fire_department, color: Colors.orange,size: 30,),
                ],
              ),
              SizedBox(height: 10,),
              Image.asset("assets/images/discount70.jpg", width: 380,),
              SizedBox(height: 10,),
              Text("Shop TEN11 Exclusive Sale and New Collection. Check in ZANDO App & Website", style: TextStyle(fontSize: 17,),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                        minimumSize: WidgetStateProperty.all<Size>(Size(170, 50)),
                      ),
                      child: Text("Shop women", style: TextStyle(fontSize: 15, color: Colors.white),),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                      minimumSize: WidgetStateProperty.all<Size>(Size(170, 50)),
                    ),
                    child: Text("Shop men", style: TextStyle(fontSize: 15, color: Colors.white),),
                  )
                ],
              ),
              SizedBox(height: 30,),
              //2
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.notifications_none_outlined),
                  SizedBox(width: 10,),
                  Icon(Icons.directions_run_rounded, color: Colors.black,size: 30,),
                  Text("Running Sneaker", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                  SizedBox(width: 10,),
                  //Image.asset("assets/images/promotion/shoes.png", width: 40,),
                ],
              ),
              SizedBox(height: 10,),
              Text("Select your comfy running footwear with low price. Check in ZANDO App & Website", style: TextStyle(fontSize: 17,),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      minimumSize: MaterialStateProperty.all<Size>(Size(170, 50)),
                    ),
                    child: Text("Men footwear".toUpperCase(), style: TextStyle(fontSize: 15, color: Colors.white),),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      minimumSize: MaterialStateProperty.all<Size>(Size(170, 50)),
                    ),
                    child: Text("Women footwear".toUpperCase(), style: TextStyle(fontSize: 15, color: Colors.white),),
                  )
                ],
              ),SizedBox(height: 40,),
              //3
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.notifications_none_outlined),
                  SizedBox(width: 10,),
                  Text("Just In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                ],
              ),
              SizedBox(height: 10,),
              Text("Check out latest our collection today. Availbale in store and online", style: TextStyle(fontSize: 17,),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      minimumSize: MaterialStateProperty.all<Size>(Size(170, 50)),
                    ),
                    child: Text("women new in".toUpperCase(), style: TextStyle(fontSize: 15, color: Colors.white),),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      minimumSize: MaterialStateProperty.all<Size>(Size(170, 50)),
                    ),
                    child: Text("men new in".toUpperCase(), style: TextStyle(fontSize: 15, color: Colors.white),),
                  )
                ],
              ),
              //4
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.notifications_none_outlined),
                  SizedBox(width: 10,),
                  Row(
                    children: <Widget>[
                      Text("[Sport Retro]", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                      Icon(Icons.sports_football, color: Colors.deepOrangeAccent, size: 30,)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Image.asset("assets/images/discount1.jpg"),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Text("Level up your outfit today with our new collecion", style: TextStyle(fontSize: 17,),),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    minimumSize: MaterialStateProperty.all<Size>(Size(170, 50)),
                  ),
                  child: Text("men new in".toUpperCase(), style: TextStyle(fontSize: 15, color: Colors.white),),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
