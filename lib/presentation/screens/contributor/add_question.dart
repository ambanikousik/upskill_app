import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class AddQuestion extends StatefulWidget {
  AddQuestion({Key key}) : super(key: key);

  @override
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Add Question',
                  style: headline_1,
                ),
              ),
              Text(
                'Q1',
                style: normalText_1,
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
                    hintText: "Write a question here",
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: height * 6,
                    width: width * 60,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.image,
                          color: blue,
                        ),
                        SizedBox(
                          width: width,
                        ),
                        Text(
                          'Add Image',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: width * 4,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: height * 6,
                    width: width * 30,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.not_interested,
                      color: Colors.red,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red.withOpacity(0.1)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Select type',
                  style: normalText_4,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: height * 6,
                    width: width * 45,
                    alignment: Alignment.center,
                    child: Text(
                      'MCQ',
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
                  Container(
                    height: height * 6,
                    width: width * 45,
                    alignment: Alignment.center,
                    child: Text(
                      'T/F',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: width * 4,
                          fontWeight: FontWeight.normal),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.05)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Set time of test',
                  style: normalText_4,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: height * 6,
                    width: width * 20,
                    alignment: Alignment.center,
                    child: Text(
                      '10 sec',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 4,
                          fontWeight: FontWeight.w700),
                    ),
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: height * 6,
                    width: width * 20,
                    alignment: Alignment.center,
                    child: Text(
                      '20 sec',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: width * 4,
                          fontWeight: FontWeight.normal),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.05)),
                  ),
                  Container(
                    height: height * 6,
                    width: width * 20,
                    alignment: Alignment.center,
                    child: Text(
                      '30 sec',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: width * 4,
                          fontWeight: FontWeight.normal),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.05)),
                  ),
                  Container(
                    height: height * 6,
                    width: width * 20,
                    alignment: Alignment.center,
                    child: Text(
                      '40 sec',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: width * 4,
                          fontWeight: FontWeight.normal),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.05)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: height * 6,
                      width: width * 45,
                      alignment: Alignment.center,
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
                          hintText: "10 Minutes",
                        ),
                      ),
                    ),
                    Container(
                      height: height * 6,
                      width: width * 45,
                      alignment: Alignment.center,
                      child: Text(
                        'Set Custom time',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: width * 4,
                            fontWeight: FontWeight.normal),
                      ),
                      decoration: BoxDecoration(
                        color: blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<ContributorBloc>(context).add(
                          ContributorAddDetailsEvent());
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
                    height: height * 7,
                    width: width * 45,
                    alignment: Alignment.center,
                    child: BlueButton(
                      buttonText: 'Save and go next',
                      action: () {
                        BlocProvider.of<ContributorBloc>(context).add(
                            ContributorAddAnswerEvent());
                      },
                      textSize: width * 4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
