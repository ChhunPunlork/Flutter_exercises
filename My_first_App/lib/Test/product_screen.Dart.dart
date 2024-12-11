import 'package:flutter/material.dart';

class productScreen extends StatelessWidget {
  const productScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network("https://www.herba-onlineshop.info/wp-content/uploads/2016/01/Herbalife-Skin-Ultimate-Produktpack-%E2%80%93-normale-bis-trockene-Haut.png"),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network("https://www.herba-onlineshop.info/wp-content/uploads/2016/01/Herbalife-Skin-Ultimate-Produktpack-%E2%80%93-normale-bis-trockene-Haut.png"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network("https://www.herba-onlineshop.info/wp-content/uploads/2016/01/Herbalife-Skin-Ultimate-Produktpack-%E2%80%93-normale-bis-trockene-Haut.png"),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network("https://www.herba-onlineshop.info/wp-content/uploads/2016/01/Herbalife-Skin-Ultimate-Produktpack-%E2%80%93-normale-bis-trockene-Haut.png"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network("https://www.herba-onlineshop.info/wp-content/uploads/2016/01/Herbalife-Skin-Ultimate-Produktpack-%E2%80%93-normale-bis-trockene-Haut.png"),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network("https://www.herba-onlineshop.info/wp-content/uploads/2016/01/Herbalife-Skin-Ultimate-Produktpack-%E2%80%93-normale-bis-trockene-Haut.png"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network("https://www.herba-onlineshop.info/wp-content/uploads/2016/01/Herbalife-Skin-Ultimate-Produktpack-%E2%80%93-normale-bis-trockene-Haut.png"),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network("https://www.herba-onlineshop.info/wp-content/uploads/2016/01/Herbalife-Skin-Ultimate-Produktpack-%E2%80%93-normale-bis-trockene-Haut.png"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network("https://www.herba-onlineshop.info/wp-content/uploads/2016/01/Herbalife-Skin-Ultimate-Produktpack-%E2%80%93-normale-bis-trockene-Haut.png"),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network("https://www.herba-onlineshop.info/wp-content/uploads/2016/01/Herbalife-Skin-Ultimate-Produktpack-%E2%80%93-normale-bis-trockene-Haut.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class LearnListViewScreen extends StatelessWidget {
  const LearnListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Listview"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                width: MediaQuery.of(context).size.width,
                "https://fuzed.pk/cdn/shop/products/starter-pack-263600.png?v=1671608231&width=533"
            ),
            Text(
                "Category",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
              ),
            ),
            //Expanded, Flexible, Container, SizeBox
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network(
                      "https://herba-online.shop/wp-content/uploads/2019/09/Skin-Basis-Produktpack-normale-bis-fettige-Haut.png",
                      width: 100,
                      height: 100,
                  ),
                  Image.network(
                    "https://skinforlife.com/wp-content/uploads/2019/08/brightening-retail-skincare-kit-600x600.png",
                    width: 100,
                    height: 100,
                  ),
                  Image.network(
                    "https://fuzed.pk/cdn/shop/products/starter-pack-263600.png?v=1671608231&width=533",
                    width: 100,
                    height: 100,
                  ),
                  Image.network(
                    "https://herba-online.shop/wp-content/uploads/2019/09/Skin-Basis-Produktpack-normale-bis-fettige-Haut.png",
                    width: 100,
                    height: 100,
                  ),
                  Image.network(
                    "https://skinforlife.com/wp-content/uploads/2019/08/brightening-retail-skincare-kit-600x600.png",
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
