import 'package:flutter/material.dart';
void main(){
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Products(),
    );
  }
}


class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("World Football!",
          style:
          TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgsK7h1yetk_d1t_p64INtye9TfJQoOcGPWUD5YflEtHZsUzdQ00_Q8uPLDq-cZNHXLP7BFgl6LFEIR-LVEbHknskgg9nyL567SDC2iTWxswsTcqidlPcOJ4P0kooF6IsVXAGW1D3EDSq_Xk5y9w2mIpXbHHQ6kPCOwzdm_7Tst8DCN3YvDr_LtttQ9/s600/THA.png",
                width: MediaQuery.of(context).size.width,
                height: 200,
              ),
              Text(
                "Thailand international fooball players",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //1
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://img.fminside.net/facesfm22/23281900.png"),
                    ),
                    //2
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://img.fminside.net/facesfm22/23250746.png"),
                    ),
                    //3
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://img.fminside.net/facesfm24/23260732.png"),
                    ),
                    //4
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://img.fminside.net/facesfm22/93058681.png"),
                    ),
                    //5
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://img.fminside.net/facesfm24/23415026.png"),
                    ),
                    //6
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://img.fminside.net/facesfm24/23246378.png"),
                    ),
                    Image.network(
                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgsK7h1yetk_d1t_p64INtye9TfJQoOcGPWUD5YflEtHZsUzdQ00_Q8uPLDq-cZNHXLP7BFgl6LFEIR-LVEbHknskgg9nyL567SDC2iTWxswsTcqidlPcOJ4P0kooF6IsVXAGW1D3EDSq_Xk5y9w2mIpXbHHQ6kPCOwzdm_7Tst8DCN3YvDr_LtttQ9/s600/THA.png",
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Image.network(
                  "https://www.international-football.net/images/logos/cambodia.png",
                  width: MediaQuery.of(context).size.height,
                  height: 100,
                ),
              ),
              Text(
                "Cambodia international fooball players",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //1
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://img.fminside.net/facesfm22/23350069.png", width: 200),
                    ),
                    //2
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://img.fminside.net/facesfm22/23350175.png",width: 200),
                    ),
                    //3
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://demo2021theme.visakhafootballclub.com/uploads/images/Players/2022/Update/6.jpg"),
                    ),
                    //4
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://demo2021theme.visakhafootballclub.com/uploads/images/Players/2022/Update/99.jpg"),
                    ),
                    //5
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://demo2021theme.visakhafootballclub.com/uploads/images/Players/2022/Update/9.jpg"),
                    ),
                    //6
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Image.network("https://demo2021theme.visakhafootballclub.com/uploads/images/Players/2022/Update/7.jpg"),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Image.network(
                  "http://pngimg.com/uploads/football/football_PNG52752.png",
                  width: MediaQuery.of(context).size.height,
                  height: 100,
                ),
              ),
              Text(
                  "Thank You for watching!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ],
        
          ),
        ),
      ),
    );
  }
}
