import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RemainingTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.symmetric(vertical:height*2,),
          child: Text('Remaining time',
          style: normalText_2,),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.clock,color: green,),
              RichText(
                text: TextSpan(
                  text: ' 30',
                  style: TextStyle(fontSize:width*6,color: green,fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Sec',
                      style: TextStyle(fontWeight: FontWeight.normal)
                    ),
                  ]
                ),
              )
            ],
          ),
          height: height*11,
          decoration: BoxDecoration(
            color: green.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10)
          ),
        )
      ],
    );
  }
}
