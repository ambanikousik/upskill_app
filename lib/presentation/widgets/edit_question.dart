import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class EditQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * 2),
            child: Text(
              question1.text,
              style: headline_2,
            ),
          ),
          AnswerOptions(
            answers: answer1,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: height, horizontal: width * 2),
            child: Container(
              width: width * 17,
              height: height * 5,
              child: BlueButton(
                buttonText: 'Edit',
                textSize: width * 4,
                action: () {
                  Navigator.pushNamed(context, '/qstnEdit');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
