import 'dart:async';

import 'package:driver_app/authentication/signup_screen.dart';
import 'package:driver_app/mainScreens/main_screen.dart';
import 'package:flutter/material.dart';


class MySplashScreen extends StatefulWidget
{
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}



class _MySplashScreenState extends State<MySplashScreen>
{

  startTimer()
  {
   Timer(const Duration(seconds: 3), () async
   {
   //  send user to the main screen
     Navigator.push(context, MaterialPageRoute(builder: (c)=> SignUpScreen()));
   });
  }
  
  @override
  void initState() {
    super.initState();
    
    startTimer();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("images/logo1.png"),

              const SizedBox(height: 10,),

              const Text(
                "Uber & inDriver Clone App",
                style:  TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}