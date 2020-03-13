import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class ContributorTut2 extends StatelessWidget {
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
            'Create a new\nTest',
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
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: green),
                ),
                Container(
                  height: height * 1.5,
                  width: height * 1.5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: green.withOpacity(0.3)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: width * 4),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 1.5, horizontal: width * 4),
                  child: Text(
                    'Skip',
                    style: smallBlueBold,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.withOpacity(0.15)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/tut3');
                },
                child: Container(
                  height: height * 10,
                  width: width * 45,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Next',
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
          )
        ],
      ),
    );
  }
}
