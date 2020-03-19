import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
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
          'Click to add\nQuestions',
          textAlign: TextAlign.center,
          style: headline_2,
        ),
      ],
    );
  }
}
