
import 'dart:async';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/material.dart';
import 'package:fyp/intro_page.dart';
import 'package:fyp/log_in_screen.dart';
import 'package:fyp/wrapper.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> IntroPage()
      //IntroPage()
      ,));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     // body:Image.asset("assets/images/Flow 1@512p-25fps"),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color(0xffFFFFFF),Color(0xff00094B),
               ],
               end: FractionalOffset(0.0, 1.0),
               begin: FractionalOffset(1.0,0.0),
             ),
             // image: DecorationImage(image:AssetImage("assets/images/Flow 1@512p-25fps"),
            //fit:BoxFit.cover,
          ),
         child:  Padding(
           padding: const EdgeInsets.only(top: 600),
          child: Center(
              child: Text("Speak Seek",style: TextStyle(fontSize: 34,fontFamily:"FontMain" ,color: Colors.white,
                shadows: [
                  Shadow(
                      color: Colors.grey,
                      offset: Offset(3, 3),
                      blurRadius: 3
                  ),
                ],
              ),),
          ),
        ),

    )




    );

  }
}