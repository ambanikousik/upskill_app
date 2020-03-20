import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RemainingTime extends StatelessWidget {

  final String minute;
  final String second;

//  Button()

  RemainingTime({
    Key key,
    @required this.minute,
    @required this.second,
  })
      : assert(minute != null),
        assert(second != null),
        super(key: key);

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
              Text('$minute:$second', style: TextStyle(fontSize: width * 6,
                  color: green,
                  fontWeight: FontWeight.bold),),
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
