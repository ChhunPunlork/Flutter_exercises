import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: SafeArea(
          child: Column(
            children: [
              notificationRow(
                profileUlr: "https://tse1.mm.bing.net/th?id=OIP.FMPq8-H5ojWk7N2kbFE_VwAAAA&pid=Api&P=0&h=220",
                title: "Medola and other 123 likes your post",
                sutitle: "30 minutes agp",
                icon: Icons.favorite,
              ),
              notificationRow(
                profileUlr: "https://tse1.mm.bing.net/th?id=OIP.FMPq8-H5ojWk7N2kbFE_VwAAAA&pid=Api&P=0&h=220",
                title: "Medola and other 123 shared your post",
                sutitle: "30 minutes agp",
                icon: Icons.share,
              ),
              notificationRow(
                profileUlr: "https://tse1.mm.bing.net/th?id=OIP.FMPq8-H5ojWk7N2kbFE_VwAAAA&pid=Api&P=0&h=220",
                title: "Medola and other 123 likes your post",
                sutitle: "30 minutes agp",
                icon: Icons.favorite,
              ),
              notificationRow(
                profileUlr: "https://tse1.mm.bing.net/th?id=OIP.FMPq8-H5ojWk7N2kbFE_VwAAAA&pid=Api&P=0&h=220",
                title: "Medola and other 123 likes your post",
                sutitle: "30 minutes agp",
                icon: Icons.favorite,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: Text("Mark all as read")
                    ),
                    MaterialButton(
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: (){},
                      child: Text("See all"),
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

class notificationRow extends StatelessWidget {
  const notificationRow({
    super.key,
    required this.title,
    required this.sutitle,
    required this.profileUlr,
    required this.icon,
  });

  final String title;
  final String sutitle;
  final String profileUlr;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(profileUlr),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                    child: Icon(icon, color: Colors.blue,)
                ),
              ],
            ),
            //text section
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(sutitle, style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}