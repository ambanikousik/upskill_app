import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class AddAnotherQuestionDialog extends StatelessWidget {
  final _ContributorBloc = ContributorBloc();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      //this right here
      child: Container(
        margin: EdgeInsets.symmetric(vertical: height * 3),
        width: width * 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 3),
              child: Text(
                'Do you want to add another\nquestion?',
                textAlign: TextAlign.center,
                style: topicTitleText,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _ContributorBloc.add(ContributorCongratulationsEvent());
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: height * 7,
                    width: width * 25,
                    alignment: Alignment.center,
                    child: Text(
                      'No',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: width * 4,
                          fontWeight: FontWeight.w700),
                    ),
                    decoration: BoxDecoration(
                      color: blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Container(
                  height: height * 7,
                  width: width * 45,
                  alignment: Alignment.center,
                  child: BlueButton(
                    buttonText: 'Yes,Add new',
                    action: () {
                      _ContributorBloc.add(ContributorAddQuestionEvent());
                      Navigator.of(context).pop();
//                      Navigator.pushNamed(context, '/addQuestion');
                    },
                    textSize: width * 4,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
