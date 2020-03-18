import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';

class UpskillTutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(
            child: Container(
              width: width * 30,
              child: Image.asset(logo),
            ),
          ),
          SizedBox(
            height: height * 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'How are you judge',
                  style: topicTitleText,
                ),
                SizedBox(
                  height: height * 2,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: normalText_2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 20,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                BlocProvider.of<UpskillBloc>(context).add(UpskillSurveyEvent());
              },
              child: Container(
                height: height * 10,
                width: width * 80,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Start Now',
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
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
