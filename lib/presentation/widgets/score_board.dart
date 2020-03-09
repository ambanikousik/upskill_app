import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class ScoreBoard extends StatelessWidget {
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
                  width: width * 15,
                  child: Text('Ques', style: smallBold),
                ),
                Container(
                  width: width * 15,
                  child: Text('Ans', style: smallBold),
                ),
                Container(
                  width: width * 20,
                  child: Text('Score', style: smallBold),
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
                      'Angular',
                      style: normalText_4,
                    ),
                  ),
                  Container(
                    width: width * 15,
                    child: Text('30', style: normalText_4),
                  ),
                  Container(
                    width: width * 15,
                    child: Text('26', style: normalText_4),
                  ),
                  Container(
                    width: width * 20,
                    child: Text('26/30', style: normalText_4),
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
                      'Vue',
                      style: normalText_4,
                    ),
                  ),
                  Container(
                    width: width * 15,
                    child: Text('30', style: normalText_4),
                  ),
                  Container(
                    width: width * 15,
                    child: Text('23', style: normalText_4),
                  ),
                  Container(
                    width: width * 20,
                    child: Text('23/30', style: normalText_4),
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
                      'Node',
                      style: normalText_4,
                    ),
                  ),
                  Container(
                    width: width * 15,
                    child: Text('30', style: normalText_4),
                  ),
                  Container(
                    width: width * 15,
                    child: Text('22', style: normalText_4),
                  ),
                  Container(
                    width: width * 20,
                    child: Text('22/30', style: normalText_4),
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
