import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class ScoreBoardContributor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 2),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: width * 20,
                  child: Text(
                    'Section',
                    style: smallBold,
                  ),
                ),
                Container(
                  width: width * 25,
                  child: Text('Perticipants', style: smallBold),
                ),
                Container(
                  width: width * 25,
                  child: Text('AVG. time', style: smallBold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: width * 20,
                    child: Text(
                      'Expert',
                      style: normalText_4,
                    ),
                  ),
                  Container(
                    width: width * 25,
                    child: Text('30', style: normalText_4),
                  ),
                  Container(
                    width: width * 25,
                    child: Text('9 min', style: normalText_4),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: width * 20,
                    child: Text(
                      'Inter',
                      style: normalText_4,
                    ),
                  ),
                  Container(
                    width: width * 25,
                    child: Text('120', style: normalText_4),
                  ),
                  Container(
                    width: width * 25,
                    child: Text('15 min', style: normalText_4),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: width * 20,
                    child: Text(
                      'Basic',
                      style: normalText_4,
                    ),
                  ),
                  Container(
                    width: width * 25,
                    child: Text('10', style: normalText_4),
                  ),
                  Container(
                    width: width * 25,
                    child: Text('20 min', style: normalText_4),
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: green.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
