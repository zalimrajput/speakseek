
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/right_bar.dart';

import 'left_bar.dart';

class TiggerExecution extends StatefulWidget{
  @override
  State<TiggerExecution> createState() => _TiggerExecutionState();
}

class _TiggerExecutionState extends State<TiggerExecution> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff012A4A),
        child: Stack(
          children: [

            Positioned(
              top: 160,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.only(topLeft: Radius.circular(22),topRight: Radius.circular(22))
                ),
                height: 650,
                width: 360,
                child: Column(
                  children: [
                    SizedBox(height: 20),

                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(22)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    color: Colors.grey
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(top: 60,bottom: 5),
                            height: 100,
                            width: 100,
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Ring",style: TextStyle(fontSize: 15,fontFamily: "FontMain",color: Color(0xff012A4A),),
                                ),
                                SizedBox(height: 10),
                                Icon(Icons.phonelink_ring_outlined,color: Color(0xff012A4A),size: 15,)
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(22)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    color: Colors.grey
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(top: 60,bottom: 5,left: 10),
                            height: 100,
                            width: 100,
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Vibrate",style: TextStyle(fontSize: 15,fontFamily: "FontMain",color: Color(0xff012A4A),)
                                ),
                                SizedBox(height: 10),

                                FaIcon(FontAwesomeIcons.viber,color:Color(0xff012A4A) , size: 15,),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(22)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    color: Colors.grey
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(top: 60,bottom: 5,left: 10),
                            height: 100,
                            width: 100,
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Flash",style: TextStyle(fontSize: 15,fontFamily: "FontMain",color: Color(0xff012A4A),)),
                                SizedBox(height: 10),
                                FaIcon(FontAwesomeIcons.lightbulb,color:Color(0xff012A4A) , size: 15,),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),

                    SizedBox(height: 40),
                    LeftBar( barWidth:20 ),
                    SizedBox(height: 20),
                    LeftBar( barWidth:40, ),
                    SizedBox(height: 20),
                    LeftBar( barWidth:90 ),
                    SizedBox(height: 20),
                    LeftBar( barWidth:70 ),
                    SizedBox(height: 20),
                    LeftBar( barWidth:20 ),


                    RightBar(barWidth: 50),
                    SizedBox(height: 20),
                    RightBar(barWidth: 70),
                    SizedBox(height: 20),
                    RightBar(barWidth: 50),





                  ],

                ),

              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 100,left: 15,right: 10),
              child: Positioned(
                // left: 20,
                // right: 20,
                child: Container(
                  height: 100,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(22),bottomLeft: Radius.circular(22) ,topRight: Radius.circular(22),topLeft: Radius.circular(22)),
                      border: Border.all(
                        width: 0.5,
                        color: Color(0xff012A4A),
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Tigger Execution ",style: TextStyle(fontSize: 15,fontFamily: "FontMain",color: Color(0xff012A4A)),),

                    ],
                  ),
                ),
              ),
            ),



          ],
        ),
      ),

    );
  }
}