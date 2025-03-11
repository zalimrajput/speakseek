
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp/main_page.dart';

class LogInScreen extends StatefulWidget{
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {


  String password="", email="";
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();

  userlogin() async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      Navigator.push(context, MaterialPageRoute(builder:(context)=>MainPage()));
    }on FirebaseAuthException catch(e){
      if (e.code=="user not found"){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.white,
            content: Center(child: Text("No user found for this email",style: TextStyle(fontFamily: "FontMain",fontSize: 15,color: Color(0xff012A4A)),))));
      }else{
        if (e.code=="wrong password"){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.white,
              content: Center(child: Text("wrong Password provided by user ",style: TextStyle(fontFamily: "FontMain",fontSize: 15,color: Color(0xff012A4A)),))));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left:5,top: 30),
              child: Padding(
                padding: const EdgeInsets.only(top: 40,left:5),
                child: Text("Login Here", style: TextStyle(fontSize: 23,fontFamily: "FontMain",fontWeight: FontWeight.bold,color: Color(0xff012A4A)),),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left:3),
              child: Padding(
                padding: const EdgeInsets.only(left:3),
                child: Text("Welcome Back you've", style: TextStyle(fontSize: 15,fontFamily: "FontMain",fontWeight: FontWeight.bold,color:Colors.black),),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              margin: EdgeInsets.only(left:5),
              child: Padding(
                padding: const EdgeInsets.only(left:5),
                child: Text("been missed !", style: TextStyle(fontSize: 15,fontFamily: "FontMain",fontWeight: FontWeight.bold,color:Colors.black)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left:5),
              width: 300,
              child: TextField(
               controller: emailcontroller,
                decoration: InputDecoration(
                  prefixIcon:Icon( Icons.email_outlined,size: 15,color: Color(0xff012A4A),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Color(0xff012A4A),
                        )
                    ),
                    hintText: "Enter Email "

                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left:5),
              width: 300,
              child: TextField(
               controller: passwordcontroller,

                decoration: InputDecoration(

                    prefixIcon:Icon( Icons.password,size: 15,color: Color(0xff012A4A),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Color(0xff012A4A),
                        )
                    ),
                    hintText: "Enter Password"

                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
              Container(
                margin: EdgeInsets.only(right:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Forgot Password",style: TextStyle(fontFamily: "FontMain",fontSize: 15,color: Color(0xff012A4A)),)),
                  ],
                ),
              ),


            SizedBox(
              height: 80,
            ),
            Container(
              margin: EdgeInsets.only(left:5),
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                      backgroundColor:Color(0xff012A4A),shadowColor: Colors.blue,minimumSize: Size(250, 50)),
                  onPressed:()
                  {
                    if(emailcontroller.text!="" && passwordcontroller.text!=""){
                     setState(() {
                       email=emailcontroller.text;
                      password=passwordcontroller.text;
                     });
                  }
                    userlogin();
                  },
                  child: Text("Log In",style: TextStyle(fontSize: 18,fontFamily: "FontMain",color: Colors.white),)),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

