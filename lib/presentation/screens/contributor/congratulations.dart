import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class Congratulations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: width * 6, vertical: height * 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Align(
              child: Image.asset(
                congrats,
                width: width * 40,
              ),
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 2),
              child: Text(
                'Congratulations',
                style: headline_1,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height * 2, horizontal: width * 2),
              child: Text(
                'Your assessment task is under approval',
                textAlign: TextAlign.center,
                style: topicTitleText,
              ),
            ),
            SizedBox(
              height: height * 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height * 2, horizontal: width * 2),
              child: Text(
                'Are you want to edit questions?',
                textAlign: TextAlign.center,
                style: topicSubtitleText,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
//                    Navigator.pushNamed(context, '/contributeProfile');
                    BlocProvider.of<ContributorBloc>(context).add(
                        ContributorProfileEvent());
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
                    buttonText: 'Yes,Want to edit',
                    action: () {
//                      Navigator.of(context).pop();
//                      Navigator.pushNamed(context, '/qstnList');
                      BlocProvider.of<ContributorBloc>(context).add(
                          ContributorQuestionListEvent());
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
