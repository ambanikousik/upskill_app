import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/bloc/bloc.dart';

class TestDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width * 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Details',
                  style: headline_2,
                ),
              ),
              Text(
                'Who is this test for',
                style: topicSubtitleText,
              ),
              SizedBox(
                height: height,
              ),
              Container(
                height: height / 8,
                width: width * 35,
                color: black.withOpacity(0.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: black.withOpacity(0.05),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: black.withOpacity(0.05),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Text text",
                  ),
                  maxLines: 6,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: height * 2, horizontal: width * 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.plusSquare,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: width,
                    ),
                    Text(
                      'Add new details',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: width * 4,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: blue.withOpacity(0.1)),
              ),
              SizedBox(
                height: height * 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<ContributorBloc>(context).add(
                          ContributorCreateTestEvent());
                    },
                    child: Container(
                      height: height * 7,
                      width: width * 45,
                      alignment: Alignment.center,
                      child: Text(
                        'Previous',
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
                    width: width * 40,
                    child: BlueButton(
                      textSize: width * 4,
                      buttonText: 'Save and go next',
                      action: () {
                        BlocProvider.of<ContributorBloc>(context).add(
                            ContributorAddQuestionEvent());
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
