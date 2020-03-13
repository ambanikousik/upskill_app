import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class SplashScreen extends StatelessWidget {

  void nextScreen(BuildContext context){
    Future.delayed(
        Duration(seconds:1),
            () {
          Navigator.pushReplacementNamed(context, '/tut1');
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    nextScreen(context);
    ScreenSize().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Center(
        child: Container(
          width: width*30,
          child: Image.asset(logo),
        ),
      ),
    );
  }
}
