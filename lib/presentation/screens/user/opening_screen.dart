import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class OpeningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: height*10,
            ),
            Expanded(
            child:  Center(
                child: Container(
                  width: width*30,
                  child: Image.asset(logo),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/signin');
              },
              child: Container(
                height: height*10,
                  width: width*80,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Start Now',
                      style: TextStyle(color: Colors.white,
                      fontSize: width*6,
                      fontWeight: FontWeight.w500),),
                      SizedBox(width: width,),
                      Icon(Icons.keyboard_arrow_right,size: width*7,color: Colors.white,),
                    ],
                  ),
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
                ) ,
              ),
            )
          ],
        ),
    );
  }
}
