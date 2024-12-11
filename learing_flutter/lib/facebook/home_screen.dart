import 'dart:ffi';

import 'package:flutter/material.dart';

// List<Map<String, dynamic>>  _listPost = [
//   {
// "profileUrl" : "https://images.hdqwalls.com/download/marvels-spider-man-remastered-2020-13-1125x2436.jpg",
// "name" : "Cristiano Ronaldo",
// "caption" : "In my mind, not just this year, always, I am always the best.  And I am always going to say that.",
// "postUrl" : "https://i.pinimg.com/736x/df/f9/a2/dff9a25a7d123f47bd139c136d53d9ea--euro--cristiano-ronaldo.jpg",
//   },
// ];
class Posts{
  final String profileUrl;
  final String name;
  final String caption;
  final String postUrl;
  Posts({required this.profileUrl, required this.name, required this.caption, required this.postUrl});
}
List<Posts> _listPost = [
  Posts(
      profileUrl: "https://images.hdqwalls.com/download/marvels-spider-man-remastered-2020-13-1125x2436.jpg",
      name: "Cristiano Ronaldo",
      caption: "In my mind, not just this year, always, I am always the best.  And I am always going to say that.",
      postUrl: "https://i.pinimg.com/736x/df/f9/a2/dff9a25a7d123f47bd139c136d53d9ea--euro--cristiano-ronaldo.jpg"
  ),
  Posts(
      profileUrl: "https://images.hdqwalls.com/download/marvels-spider-man-remastered-2020-13-1125x2436.jpg",
      name: "Cristiano Ronaldo",
      caption: "In my mind, not just this year, always, I am always the best.  And I am always going to say that.",
      postUrl: "https://i.pinimg.com/736x/df/f9/a2/dff9a25a7d123f47bd139c136d53d9ea--euro--cristiano-ronaldo.jpg"
  ),
  Posts(
      profileUrl: "https://images.hdqwalls.com/download/marvels-spider-man-remastered-2020-13-1125x2436.jpg",
      name: "Cristiano Ronaldo",
      caption: "In my mind, not just this year, always, I am always the best.  And I am always going to say that.",
      postUrl: "https://i.pinimg.com/736x/df/f9/a2/dff9a25a7d123f47bd139c136d53d9ea--euro--cristiano-ronaldo.jpg"
  ),
  Posts(
      profileUrl: "https://images.hdqwalls.com/download/marvels-spider-man-remastered-2020-13-1125x2436.jpg",
      name: "Cristiano Ronaldo",
      caption: "In my mind, not just this year, always, I am always the best.  And I am always going to say that.",
      postUrl: "https://i.pinimg.com/736x/df/f9/a2/dff9a25a7d123f47bd139c136d53d9ea--euro--cristiano-ronaldo.jpg"
  ),
  Posts(
      profileUrl: "https://images.hdqwalls.com/download/marvels-spider-man-remastered-2020-13-1125x2436.jpg",
      name: "Cristiano Ronaldo",
      caption: "In my mind, not just this year, always, I am always the best.  And I am always going to say that.",
      postUrl: "https://i.pinimg.com/736x/df/f9/a2/dff9a25a7d123f47bd139c136d53d9ea--euro--cristiano-ronaldo.jpg"
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Facebook",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 30),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),iconSize: 40,),
          IconButton(onPressed: (){}, icon: Icon(Icons.message), iconSize: 40,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20, right: 35),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage("https://updatecrazy.com/wp-content/uploads/2023/10/Spiderman-Miles-Morales-PC-Update-2.1012-Patch-Notes.jpg"),
                        ),
                      ),
                      Text(
                          "Whats your mind?",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 3,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.live_tv), color: Colors.red,),
                          Text(
                              "Live",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.photo), color: Colors.green,),
                          Text(
                            "Photos",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt), color: Colors.red,),
                          Text(
                              "Room",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
              for(final post in _listPost)
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 45,
                                  backgroundImage: NetworkImage(post.profileUrl),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(post.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                Text("Phnom Penh, Cambodia, 10h", style: TextStyle(fontSize: 12),),
                              ],
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                        ],
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                              child: Text(post.caption, style: TextStyle(fontSize: 17),),
                            ),
                          ],
                        ),
                      ),
                      Image.network(
                        post.postUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.favorite), color: Colors.red,),
                              Text("23.5M"),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
                              Text("12k"),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                              Text("2M"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              //stories positions
              // SizedBox(
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 15),
              //     child: Container(
              //       color: Colors.white,
              //       height: 100,
              //       child: Row(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.only(left: 10),
              //             child: Container(
              //               decoration: BoxDecoration(
              //                 border: Border.all(
              //                   color: Colors.grey, // Set border color
              //                   width: 2, // Set border width
              //                 ),
              //
              //                 borderRadius: BorderRadius.circular(10), // Optional: Round corners
              //               ),
              //               child: Row(
              //                 children: [
              //                   IconButton(onPressed: (){}, icon: Icon(Icons.live_tv), color: Colors.red,),
              //                   Text(
              //                     "Create Room  ",
              //                     style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              //             child: Container(
              //               child: Column(
              //                 children: [
              //                   CircleAvatar(
              //                     radius: 35,
              //                     backgroundImage: NetworkImage("http://images5.fanpop.com/image/photos/31800000/Iron-Man-iron-man-3-31868069-1600-1200.jpg"),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              //             child: Container(
              //               child: Column(
              //                 children: [
              //                   CircleAvatar(
              //                     radius: 35,
              //                     backgroundImage: NetworkImage("http://images5.fanpop.com/image/photos/31800000/Iron-Man-iron-man-3-31868069-1600-1200.jpg"),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              //             child: Container(
              //               child: Column(
              //                 children: [
              //                   CircleAvatar(
              //                     radius: 35,
              //                     backgroundImage: NetworkImage("http://images5.fanpop.com/image/photos/31800000/Iron-Man-iron-man-3-31868069-1600-1200.jpg"),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 10),
            //   child: Container(
            //     height: 115,
            //     color: Colors.white,
            //     child: ListView(
            //       scrollDirection: Axis.horizontal,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 10),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(right: 10),
            //                 child: Column(
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 35,
            //                       backgroundImage: NetworkImage("https://cdn.wallpapersafari.com/37/25/r0qtYI.jpg"),
            //                     ),
            //                     Text("Leu"),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(right: 10),
            //                 child: Column(
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 35,
            //                       backgroundImage: NetworkImage("https://cdn.wallpapersafari.com/37/25/r0qtYI.jpg"),
            //                     ),
            //                     Text("Leu"),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(right: 10),
            //                 child: Column(
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 35,
            //                       backgroundImage: NetworkImage("https://cdn.wallpapersafari.com/37/25/r0qtYI.jpg"),
            //                     ),
            //                     Text("Leu"),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(right: 10),
            //                 child: Column(
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 35,
            //                       backgroundImage: NetworkImage("https://cdn.wallpapersafari.com/37/25/r0qtYI.jpg"),
            //                     ),
            //                     Text("Leu"),
            //                   ],
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(right: 10),
            //                 child: Column(
            //                   children: [
            //                     CircleAvatar(
            //                       radius: 35,
            //                       backgroundImage: NetworkImage("https://cdn.wallpapersafari.com/37/25/r0qtYI.jpg"),
            //                     ),
            //                     Text("Leu"),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 3),
            //
            //   child: Container(
            //     height: 168,
            //     color: Colors.white,
            //     child: Column(
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.only(top: 20, left: 2),
            //               child: CircleAvatar(
            //                 radius: 40,
            //                 backgroundImage: NetworkImage("https://www.thesun.co.uk/wp-content/uploads/2024/06/lionel-messi-argentina-celebrates-fifa-880984768.jpg?strip=all&quality=100&w=1920&h=1080&crop=1"),
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.only(top:5,left:3),
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                     "Leonel Messi",
            //                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //                   ),
            //                   Text(
            //                     "Paris, French, 10h",
            //                     style: TextStyle(fontSize: 15),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
            //           ],
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(left: 14,top: 15),
            //           child: Container(
            //               child:
            //               Text("In football as in watchmaking, talent and elegance mean nothing without rigour and precision",style: TextStyle(fontSize: 16),)),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Container(
            //   color: Colors.white,
            //
            //   child: Image.network("https://i.pinimg.com/736x/df/f9/a2/dff9a25a7d123f47bd139c136d53d9ea--euro--cristiano-ronaldo.jpg"),
            // ),
            // Container(
            //   color: Colors.white,
            //   child: Row(
            //     children: [
            //       IconButton(onPressed: (){}, icon: Icon(Icons.favorite), color: Colors.red,),
            //       Text("333"),
            //       IconButton(onPressed: (){}, icon: Icon(Icons.comment),),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
