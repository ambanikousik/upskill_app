import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: UpskillAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 6),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 2,
              ),
              child: Text(
                'Result',
                style: normalText_2,
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.sentiment_very_dissatisfied,
                    color: green.withOpacity(0.3),
                    size: width * 10,
                  ),
                  Icon(Icons.sentiment_dissatisfied,
                      color: green.withOpacity(0.3), size: width * 10),
                  Icon(Icons.sentiment_neutral, color: green, size: width * 10),
                  Icon(Icons.sentiment_satisfied,
                      color: green.withOpacity(0.3), size: width * 10),
                ],
              ),
              height: height * 11,
              decoration: BoxDecoration(
                  color: green.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 10),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'My Score is',
                    style: headline_2,
                    children: <TextSpan>[
                      TextSpan(
                        text: '\n70%',
                        style: headlineGreen,
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: height * 5,
            ),
            BlueButton(
              buttonText: 'See result statistics',
              action: () {
                Navigator.pushNamed(context, '/analytic');
              },
            ),
          ],
        ),
      ),
    );
  }
}
