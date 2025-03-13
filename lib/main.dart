import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6,
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white ,
        title: Text("facebook",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue[700]),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.mode_comment)),

        ],
        bottom: TabBar(
            indicatorColor:Colors.blue[700],
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.blue[700],
            unselectedLabelColor: Colors.black87,
            tabs: [
          Tab(
              icon: Icon(Icons.home_filled,size: 28,)
          ),
          Tab(
              icon: Icon(Icons.ondemand_video_outlined,size:28)
          ),
          Tab(
              icon: Icon(Icons.storefront,size:28)
          ),
          Tab(
              icon: Icon(Icons.videogame_asset_outlined,size:28)
          ),

          Tab(
              icon: Icon(Icons.notifications_none,size:28)
          ),
          Tab(
              icon: Icon(Icons.menu,size:28)
          ),
        ]),
      ),

          body:
            TabBarView(children: [
              Container(color: Colors.white,
                child: Column(
                  children: [
                    Container(

                      height: 60,
                      child:
                        Row(children: [
                          Container(width:8,),
                          CircleAvatar(
                            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRXxfn1j1vKFy8yJeBGl2AS6Dcah-lKgHofg&s"),
                            child: Icon(Icons.person),
                            radius:25,
                          ),
                          Container(width: 12,),
                          Container(
                            margin: EdgeInsets.only(top: 10,bottom: 10),
                            width: 280,
                            //color: Colors.green,
                            child: TextField(

                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 10,bottom: 10,left: 23),
                                  hintText: "What's on your mind?",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(60),borderSide: BorderSide(color: Colors.grey,width: 0.8) ),


                              ),


                            ),

                          ),
                          Container(width: 17,),
                          Container(
                            child: 
                            Icon(Icons.photo_rounded,color: Colors.green[600]),


                          )

                        ],)
                    )
                  ],
                ),

              ),
              Container(color: Colors.black),
              Container(color: Colors.white),
              Container(color: Colors.white),
              Container(color: Colors.white),
              Container(color: Colors.white),

            ])

    ));

  }
}






//
//
// appBar: AppBar(
// toolbarHeight: 80,
// backgroundColor: Colors.white,
// title: Text("facebook",style: TextStyle(color: Colors.indigo,fontSize: 30,fontWeight: FontWeight.bold),),
// actions: [
// IconButton(onPressed: (){}, icon: Icon(Icons.add_circle,size: 30,)),
// IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 30,)),
// IconButton(onPressed: (){}, icon: Icon(Icons.mark_chat_unread,size: 30,)),
//
// ],
// ),
// body:Column(
// children: [
// Row(
// children: [
//
// CircleAvatar(
// radius: 30,
// backgroundImage: NetworkImage("https://www.shutterstock.com/image-photo/blond-hair-girl-taking-photo-260nw-2492842415.jpg"),
// child: Icon(Icons.person),
//
// ),
// Container(
// width: 20,
// ),
// Container(
// height: 80,
// width: 270,
// // color: Colors.blue,
// child: TextField(
// decoration: InputDecoration(
// // border: Cir
// ),
// ),
// ),
// Container(
// height: 80,
// width: 60,
// // color: Colors.yellow,
// child: Icon(Icons.image,color: Colors.green,),
// ),
//
// ],
// )
// ],
// )
//
