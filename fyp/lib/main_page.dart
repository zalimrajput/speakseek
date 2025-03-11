

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 //import 'package:flutter/src/rendering/box.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fyp/alert.dart';
import 'package:fyp/audio_recording.dart';
import 'package:fyp/history_maintance.dart';
import 'package:fyp/mobile_tracking.dart';
import 'package:fyp/personalize_voice.dart';
import 'package:fyp/screen_lock.dart';
import 'package:fyp/screen_unlock.dart';
import 'package:fyp/tigger_execution.dart';
import 'package:icons_plus/icons_plus.dart';

import 'menu_page.dart';

class MainPage extends StatefulWidget{
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<Map<String,dynamic>>sliderMap=[
    {
      "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHA1qM97slzkaIjh0so6FUpyMjVhOpc5kdBwPe1y36u3uY2FWcPoxF5O3i17z9BvV18pU&usqp=CAU",
    },

    {
      "images":"https://static.vecteezy.com/system/resources/previews/023/133/977/non_2x/voice-assistant-personal-assistant-and-voice-recognition-technology-concept-microphone-button-with-voice-and-sound-imitation-lines-closeup-smartphone-in-wireframe-hands-illustration-vector.jpg",
    },

    {
      "images": "https://img.freepik.com/premium-vector/personal-data-protection-business-concept-cyber-security-fingerprint-with-padlock-icon-private-secure-safety-closeup-smartphone-wireframe-hands-vector-illustration_127544-1719.jpg",
    },

    {
      "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7ZzcUXbtWbiv-X2NruBnkQPp_92ZTawdV9w&s",
    },

    {
      "images":"https://img.freepik.com/premium-vector/dms-document-management-data-system-corporate-data-management-system-privacy-data-protection-business-internet-technology-concept-closeup-smartphone-wireframe-hand-vector-illustration_127544-2058.jpg",
    },

  ];
   late final PageController pageController;

   signout()async{
     await FirebaseAuth.instance.signOut();

   }
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController(
      initialPage: 0,
      viewportFraction: 0.85,
    );
  }
  @override
  Widget build(BuildContext context) {
   
     double xOffset=0;
     double yOffset=0;
     bool isDrawerOpen =false;
     
  return Scaffold(
    body:  Container(
    height: double.infinity,
    width: double.infinity,
    child: Stack(
        children: [
      Container(
            height: 200,
             width: 360,
      color: Color(0xff012A4A),
        child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
                Container(
                  width:100,
                    margin: EdgeInsets.only(left: 50,top: 80),
                    child: Column(
                      children: [
                        Text("Welcome  ",style: TextStyle(fontSize:24,fontFamily: "FontMain",color: Colors.white,fontWeight: FontWeight.bold),),
                        Text("Speak Seek ",style: TextStyle(fontSize:15,fontFamily: "FontMain",color: Colors.white),),
                      ],
                    )
        ),
               Container(
                 width: 30,
                 margin: EdgeInsets.only(left: 150,bottom: 100,top: 20),
                 child:  Builder(
                   builder: (context)=>IconButton(icon: Icon(
                     Icons.menu_open_rounded, color: Colors.white,),
                      onPressed: () {

                        Scaffold.of(context).openDrawer();

                      },
                    ),
                  ),


                     // Scaffold.of(context).openDrawer();


                 ),
                 // Builder(
                 //   builder: (context)=>IconButton(icon: Icon(
                 //     Icons.menu_open_rounded, color: Colors.white,),
                 //     onPressed: () {
                 //       setState(() {
                 //         xOffset=290;
                 //         yOffset=80;
                 //         isDrawerOpen=true;
                 //       });
                 //       // Scaffold.of(context).openDrawer();
                 //
                 //     },
                 //   ),
                 // ),


          ],
        ),
      ),




       Positioned(
             top: 180,
            child: Container(
               height: 650,
               width: 360,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(23),topRight: Radius.circular(23)),
                 color: Colors.white,
             ),
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    SizedBox(
                      height: 30,
                    ),

                    Text("Secure your Phone & Secure your Future",style: TextStyle(fontSize: 15,fontFamily: "FontMain",color: Color(0xff012A4A)),),

                    SizedBox(
                      height: 10,
                    ),

                     SizedBox(
                       height: 200,
                       child: PageView.builder(
                         itemCount: 5,
                           controller: pageController,

                           itemBuilder: (_,index){
                             return AnimatedBuilder(
                                 animation: pageController,
                                 builder: (context,child){
                                   return child!;
                                 },

                               child: Container(
                                 margin: EdgeInsets.all(12),
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(24),
                                   child: Image.network("${sliderMap.elementAt(index)['images']}",
                                   fit:BoxFit.cover,
                                    height:250,
                                 ),
                               ),
                               ),

                               // child: Container(
                               //   margin: EdgeInsets.only(top: 30,left: 12,right: 12,bottom: 12),
                               //   height: 200,
                               //  // width: 200,
                               //   decoration: BoxDecoration(
                               //     color: Color(0xff012A4A),
                               //     boxShadow:[
                               //       BoxShadow(
                               //         blurRadius: 2,
                               //         spreadRadius: 1,
                               //         color: Colors.grey,
                               //       ),
                               //     ],
                               //     borderRadius: BorderRadius.all(Radius.circular(24)),
                               //     // image: DecorationImage(image: AssetImage("assets/images/voicees.PNG"),
                               //     //         fit:BoxFit.cover,
                               //     // ),
                               //
                               //   ),
                               //
                               // ),


                             );
                           },
                       ),
                     ),





                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            Text("Categories",style: TextStyle(fontSize: 22,fontFamily: "FontMain",fontWeight: FontWeight.bold,color: Color(0xff012A4A)),),
                            SizedBox(height: 10),
                            Container(
                              margin: EdgeInsets.only(left: 15),
                                child: Text("This Application Provide you Some ",style: TextStyle(fontSize: 16,fontFamily: "FontMain",color: Color(0xff012A4A)),)),
                            Container(
                                child: Text(" unique featuers for your Phone",style: TextStyle(fontSize: 16,fontFamily: "FontMain",color: Color(0xff012A4A)),)),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),


                    GridView.count(crossAxisCount: 2,
                      shrinkWrap: true,
                      crossAxisSpacing: 10,
                     mainAxisSpacing: 10,
                      physics: NeverScrollableScrollPhysics(),
                      children: [

                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Personalized_Voice()));
                          } ,
                          child: Container(
                            margin:EdgeInsets.only(left:10,bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(22)),
                              color: Color(0xff012A4A),

                              border: Border.all(
                                width: 0.5,
                                color: Colors.black
                              )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.record_voice_over_outlined,color: Colors.white,size: 35,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Personalized Voice",style: TextStyle(fontSize: 10,fontFamily: "FontMain",color: Colors.white),)
                              ],
                            ),
                          ),
                        ),


                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TiggerExecution()));
                          },
                          child: Container(
                            margin:EdgeInsets.only(right:10,bottom: 10),
                            decoration: BoxDecoration(
                              color: Color(0xff012A4A),
                              borderRadius: BorderRadius.all(Radius.circular(22)),
                            ),
                            child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Icon(Icons.ring_volume_outlined,color: Colors.white,size: 35,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Tigger Execution",style: TextStyle(fontSize: 10,fontFamily: "FontMain",color: Colors.white),)
                              ],
                            ),
                          ),
                        ),



                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenLock()));
                          },
                          child: Container(
                            margin:EdgeInsets.only(left:10,bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(22)),
                              color: Color(0xff012A4A),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Icon(Icons.screen_lock_portrait_outlined,color: Colors.white,size: 35,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Screen Lock",style: TextStyle(fontSize: 10,fontFamily: "FontMain",color: Colors.white),)
                              ],
                            ),
                          ),
                        ),



                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenUnlock()));
                          },
                          child: Container(
                            margin:EdgeInsets.only(right: 10,bottom: 10),
                            decoration: BoxDecoration(
                              color: Color(0xff012A4A),
                              borderRadius: BorderRadius.all(Radius.circular(22)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                               Icon(FontAwesome.mobile_screen,color: Colors.white,size: 35,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Screen Unlock",style: TextStyle(fontSize: 10,fontFamily: "FontMain",color: Colors.white),)
                              ],
                            ),
                          ),
                        ),


                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Alert()));
                          },
                          child: Container(
                            margin:EdgeInsets.only(left:10,bottom: 10),
                            decoration: BoxDecoration(
                              color: Color(0xff012A4A),
                              borderRadius: BorderRadius.all(Radius.circular(22)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                 Icon(EvaIcons.alert_circle_outline,color: Colors.white,size: 35,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Alert System",style: TextStyle(fontSize: 10,fontFamily: "FontMain",color: Colors.white),)
                              ],
                            ),
                          ),
                        ),


                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioRecording()));
                          },
                          child: Container(
                            margin:EdgeInsets.only(right: 10,bottom: 10),
                            decoration: BoxDecoration(
                              color: Color(0xff012A4A),
                              borderRadius: BorderRadius.all(Radius.circular(22)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Icon(Icons.multitrack_audio_outlined,color: Colors.white,size: 35,),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Audio Recording",style: TextStyle(fontSize: 10,fontFamily: "FontMain",color: Colors.white),)
                              ],
                            ),
                          ),
                        ),


                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryMaintance()));
                      },
                      child: Container(
                        margin:EdgeInsets.only(left:10,bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff012A4A),
                          borderRadius: BorderRadius.all(Radius.circular(22)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Icon(Icons.file_copy_outlined,color: Colors.white,size: 35,),
                            SizedBox(
                              height: 10,
                            ),
                            Text("History Mainatnce",style: TextStyle(fontSize: 10,fontFamily: "FontMain",color: Colors.white),)
                          ],
                        ),
                      ),
                    ),



                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileTracking()));
                      },
                      child: Container(
                        margin:EdgeInsets.only(right: 10,bottom: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff012A4A),
                          borderRadius: BorderRadius.all(Radius.circular(22)),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.location_solid,color: Colors.white,size: 35,),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Mobile Location",style: TextStyle(fontSize: 10,fontFamily: "FontMain",color: Colors.white,)
                            ),
                          ],
                        ),
                      ),
                    ),


                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Thank you ",style: TextStyle(fontSize: 18,fontFamily: "FontMain",color: Color(0xff012A4A)),),
                    SizedBox(height: 50),
                  ],
                ),
              ),
                        ),
       ),

        ],
      ),
    ),

    drawer: Drawer(
      child: ListView(
        children: [
          Column(
        children: [
            CircleAvatar(
              radius: 50,
            ),
            SizedBox(height: 10),
            Text("Zalim Kuri",style: TextStyle(fontSize: 15,fontFamily:"FontMain",color: Color(0xff012A4A)),),
         ]),
          SizedBox(height: 30),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.home,color: Color(0xff012A4A),),
            title: Text("Home",style: TextStyle(fontSize: 15,fontFamily:"FontMain",color: Color(0xff012A4A))),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.person_2_outlined,color: Color(0xff012A4A),),
            title: Text("Profile",style: TextStyle(fontSize: 15,fontFamily:"FontMain",color: Color(0xff012A4A))),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.file_copy_outlined,color: Color(0xff012A4A),),
            title: Text("GuidLine",style: TextStyle(fontSize: 15,fontFamily:"FontMain",color: Color(0xff012A4A))),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.settings,color: Color(0xff012A4A),),
            title: Text("Setting",style: TextStyle(fontSize: 15,fontFamily:"FontMain",color: Color(0xff012A4A))),
          ),
          ListTile(
            onTap:signout,
            leading: Icon(Icons.logout_outlined,color: Color(0xff012A4A),),
            title: Text("Log out",style: TextStyle(fontSize: 15,fontFamily:"FontMain",color: Color(0xff012A4A))),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.security,color: Color(0xff012A4A),),
            title:Text("Security & Privacy",style: TextStyle(fontSize: 15,fontFamily:"FontMain",color: Color(0xff012A4A))),
          ),

        ],
      ),
    ),


  );
  }}


