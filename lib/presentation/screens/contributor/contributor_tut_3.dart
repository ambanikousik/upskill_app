import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class ContributorTut3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: height * 35,
            margin: EdgeInsets.symmetric(horizontal: width * 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(cover3), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: height * 5,
          ),
          Text(
            'Share your created\nTest',
            textAlign: TextAlign.center,
            style: headline_2,
          ),
          SizedBox(
            height: height * 15,
          ),
          Container(
            width: width * 25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: height * 1.5,
                  width: height * 1.5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: green.withOpacity(0.3)),
                ),
                Container(
                  height: height * 1.5,
                  width: height * 1.5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: green.withOpacity(0.3)),
                ),
                Container(
                  height: height * 1.5,
                  width: height * 1.5,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: green),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/newTest');
                },
                child: Container(
                  height: height * 10,
                  width: width * 80,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Start Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 6,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: width,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: width * 7,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(35)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
