import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/Screen/Home_Screen.dart';

class Story {
  final String name;
  final String profileUrl;
  Story({required this.name, required this.profileUrl});
}
class Posts {
  final String name;
  final String profileUrl;
  final String caption;
  final String postUrl;
  Posts({required this.name, required this.profileUrl, required this.caption, required this.postUrl});
}
List<Posts> _listPost = [
  Posts(
      name: "chhun Punlork",
      profileUrl: "https://freedesignfile.com/upload/2017/01/Handsome-man-HD-picture-09.jpg",
      caption: "I love you",
      postUrl: "https://wallpaperaccess.com/full/2562964.jpg"),
  Posts(
      name: "chhun Jackson",
      profileUrl: "https://i.pinimg.com/originals/07/6d/98/076d98265d5d25371521c16e92577b00.jpg",
      caption: "I miss you",
      postUrl: "https://wallpapercave.com/wp/wp2858551.jpg"),
];

//List<Map<String, dynamic>> _listProfiles = [
//   {
//     'name' : 'Lork',
//     'profileUrl' : "https://i.pinimg.com/originals/f2/fb/97/f2fb970a84ed2cda970c137fbdc9aa03.jpg",
//   },
//   {
//     'name' : 'Leu',
//     'profileUrl' : "https://i.pinimg.com/originals/ff/63/95/ff63954a62a35b06888f60a8565e9467.jpg",
//   },
//   {
//     'name' : 'Long',
//     'profileUrl' : "https://i.pinimg.com/originals/f2/d0/ac/f2d0ac079588297a2bd818a4c061ec71.jpg",
//   },
//   {
//     'name' : 'Lib',
//     'profileUrl' : "https://images.pexels.com/photos/13112212/pexels-photo-13112212.jpeg?cs=srgb&dl=pexels-gerardo-carranza-puga-13112212.jpg&fm=jpg",
//   },
// ];
// List<Map<String, dynamic>> _Posts = [
//   {
//     "name" : "chhun Punlork",
//     "profileUrl" : "https://i.pinimg.com/originals/07/6d/98/076d98265d5d25371521c16e92577b00.jpg",
//     "caption" : "I love you",
//     "postUrl" : "https://wallpaperaccess.com/full/2562964.jpg",
//   },
//   {
//     "name" : "Sim Punleu",
//     "profileUrl" : "https://thumbs.dreamstime.com/b/portrait-beautiful-man-19196486.jpg",
//     "caption" : "I am not good at all",
//     "postUrl" : "https://wallpapercave.com/wp/wp2858551.jpg"
//   }
// ];
List<Story> _listProfiles = [
  Story(
      name: "Lork",
      profileUrl: "https://i.pinimg.com/originals/f2/fb/97/f2fb970a84ed2cda970c137fbdc9aa03.jpg"),
  Story(
      name: "Leu",
      profileUrl: "https://i.pinimg.com/originals/ff/63/95/ff63954a62a35b06888f60a8565e9467.jpg"),
  Story(
      name: "Long",
      profileUrl: "https://i.pinimg.com/originals/f2/d0/ac/f2d0ac079588297a2bd818a4c061ec71.jpg"),
];
class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Facebook", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
           actions: [
    IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
    // IconButton(onPressed: (){}, icon: Icon(Icons.search)),
       ],
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 140,
              child: ListView.builder(
                itemCount: _listProfiles.length,
                scrollDirection: Axis.horizontal,
                itemBuilder : (context, index){
                  final story = _listProfiles[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 5, top: 10, left: 5),
                    child: Column(
                      children:[
                       Container(
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           border: Border.all(
                             color: Colors.blue,
                             width: 2,
                           ),
                         ),
                        child : CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(story.profileUrl),
                        ),
                       ),
                        Text(story.name, style: TextStyle(fontWeight: FontWeight.normal),),
                      ],
                    ),
                  );
                },
              ),
            ),
            //end Stories section

            SizedBox(
              height: 10,
            ),
            //post section
            for(final post in _listPost)
             Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    post.profileUrl),
                                radius: 40,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(post.name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                  Text("Combodia, Phnom Penh, 10h", style: TextStyle(fontSize: 13),),
                                ],
                              ),
                            ],
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                          post.caption),
                    ),
                    Image.network(
                      post.postUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.favorite, color: Colors.red,),
                              Text(" 201 Likes")
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                  "32 Comments  ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  "54 Postd",
                                  style: TextStyle(fontWeight: FontWeight.bold)
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.loop)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            // Container(
            //   color: Colors.white,
            //   child: Column(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 8),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Row(
            //               children: [
            //                 CircleAvatar(
            //                   backgroundImage: NetworkImage(
            //                       "https://i.pinimg.com/originals/07/6d/98/076d98265d5d25371521c16e92577b00.jpg"),
            //                   radius: 40,
            //                 ),
            //                 SizedBox(
            //                   width: 5,
            //                 ),
            //                 Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Text("James Rodriguez",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            //                     Text("Combodia, Phnom Penh, 10h", style: TextStyle(fontSize: 13),),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //             IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
            //           ],
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //         child: Text(
            //             "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old"),
            //       ),
            //       Image.network("https://wallpaperaccess.com/full/2562964.jpg"),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 20),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Row(
            //               children: [
            //                 Icon(Icons.favorite, color: Colors.red,),
            //                 Text(" 201 Likes")
            //               ],
            //             ),
            //             Row(
            //               children: [
            //                 Text(
            //                   "32 Comments  ",
            //                   style: TextStyle(fontWeight: FontWeight.bold),
            //                 ),
            //                 Text(
            //                     "54 Postd",
            //                     style: TextStyle(fontWeight: FontWeight.bold)
            //                 )
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //       Divider(),
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 20),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
            //             IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
            //             IconButton(onPressed: (){}, icon: Icon(Icons.loop)),
            //             IconButton(onPressed: (){}, icon: Icon(Icons.share)),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
