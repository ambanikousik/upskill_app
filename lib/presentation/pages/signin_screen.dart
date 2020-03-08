import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class SigningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Image.asset(cover1),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: width*100,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: width * 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Signin in my account',
                    style: headline_1),
                    Container(color:Colors.black,
                    height: height/4,
                        width: width*40,),
                    Text('Email ir name',
                    style: normalText_1,),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      decoration:InputDecoration(
                      hintText: 'xyz@email.com',
                        fillColor: Colors.black.withOpacity(0.1),
                        filled: true,
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),borderSide: BorderSide(color: Colors.black)),
                      ) ,
                    ),
                    Text('Password',
                      style: normalText_1,),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      autofocus: false,
                      decoration:InputDecoration(
                        hintText: '********',
                        fillColor: Colors.black.withOpacity(0.1),
                        filled: true,
                        border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                      ) ,
                    ),
                      BlueButton(
                        buttonText: 'Sign in now',
                        action: (){
                        Navigator.pushNamed(context, '/survey');
                      },),
                    Container(
                      width: width*100,
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                           text: 'Dont have an account?',
                          style: TextStyle(fontSize: width*4.5,color: Colors.black38),
                          children: <TextSpan> [
                            TextSpan(
                              text: ' Sign up',
                              style: smallBlueBold,
                            )
                          ]
                        ),

                      ),
                    ),
                    Container(
                      width: width*100,
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: height,horizontal: width*4),
                        child: Text('Skip sign up',
                        style: smallBlueBold,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.2)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
            ),
          ),
        ],
      ),
    );
  }
}
