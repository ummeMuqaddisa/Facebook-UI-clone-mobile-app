import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'home page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
    //  home: login(),
      home: homepage(),
    );
  }
}
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username= TextEditingController();
    TextEditingController password= TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title:  Text("appbar",style: TextStyle(color: Colors.green, fontSize: 30),),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,


      ),

      body:
     Column (
         children: [
       Container(
         height: 160,
         width: double.infinity,
         color: Colors.white,
       ),
       Container(
         height: 70,
        width: 70,
        color: Colors.white,
        child:
Image.network("https://img.freepik.com/premium-photo/facebook-logo_1080029-107.jpg?semt=ais_hybrid&w=740")
     ),
       Container(
         height: 100,
           width: double.infinity,

       ),
       Container(
         margin: EdgeInsets.only(left: 25,right: 25),
         child:
         TextField(
           controller: username,
           decoration: InputDecoration(
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(12) ),
             hintText: "Mobile number or email arrdess",
             hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
             enabledBorder:
               OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey,width: 1), ),
           ),
         ),
       ),
       SizedBox(
         height: 15,
       ),
       Container(
         margin: EdgeInsets.only(left: 25,right: 25),
         child:
         TextField(
           controller: password,
           decoration: InputDecoration(
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(12) ),
             hintText: "Password",
             hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
             enabledBorder:
             OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey,width: 1), ),
           ),
         ),

       ),

       SizedBox(
         height: 15,
       ),



       ElevatedButton(onPressed: () {
         if (username.text=='user' && password.text=='1234') {
           //print(username.text);
           // print(password.text);
           Navigator.of(context).push(
               MaterialPageRoute(builder: (context) => homepage(),));
         }else
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Username & password does not match")));
         
           
       } ,


           child:
           Text(" Log in ",style: TextStyle(color: Colors.white),),
         style: ElevatedButton.styleFrom(backgroundColor:  Colors.blue,
         minimumSize: Size(365, 45)),

 


       ),

       SizedBox(
         height: 15,
       ),


       Container(
        child:
        Text("Forgotten password?", style: TextStyle(color: Colors.black),),

      ),
       SizedBox(
         height: 130,
       ),
       ElevatedButton(onPressed: () {} ,


         child:
         Text(" Create new account ",style: TextStyle(color: Colors.lightBlue),),
         style: ElevatedButton.styleFrom(backgroundColor:  Colors.white, shape: StadiumBorder( side: BorderSide(color: Colors.lightBlue)
         ),
             minimumSize: Size(365, 45)),

       ),



      /* ElevatedButton(
         onPressed: null, child: Row(),
       ),*/
       
  ]


     ) );
  }
}





