import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class AddAnswer extends StatefulWidget {
  AddAnswer({Key key}) : super(key: key);

  @override
  _AddAnswerState createState() => _AddAnswerState();
}

class _AddAnswerState extends State<AddAnswer> {
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
                padding: EdgeInsets.symmetric(vertical: height),
                child: Text(
                  'Add Answer',
                  style: headline_1,
                ),
              ),
              Text(
                'For the correct answer select the correct answer checkbox',
                style: topicSubtitleText,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Q.1 What is Vue?',
                  style: headline_2,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: height),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Answer 1',
                      style: normalText_1,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height),
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
                          hintText: "This is a framework",
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: width * 2),
                          child: Container(
                            height: width * 8,
                            width: width * 8,
                            child: Center(
                                child: Icon(
                              Icons.check,
//                                  color:_option.isSelected ? white : green,)
                              color: white,
                            )),
                            decoration: BoxDecoration(
//                              color: _option.isSelected
//                                  ? green
//                                  : white,
                                color: green,
                                border: Border.all(width: 2.0, color: green),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Text(
                          'Correct Answer',
                          style: normalText_2,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: height),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Answer 2',
                      style: normalText_1,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height),
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
                          hintText: "This is a framework",
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: width * 2),
                          child: Container(
                            height: width * 8,
                            width: width * 8,
                            child: Center(
                                child: Icon(
                              Icons.check,
//                                  color:_option.isSelected ? white : green,)
                              color: white,
                            )),
                            decoration: BoxDecoration(
//                              color: _option.isSelected
//                                  ? green
//                                  : white,
                                color: white,
                                border: Border.all(width: 2.0, color: green),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Text(
                          'Correct Answer',
                          style: normalText_2,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: height),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Answer 3',
                      style: normalText_1,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height),
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
                          hintText: "This is a framework",
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: width * 2),
                          child: Container(
                            height: width * 8,
                            width: width * 8,
                            child: Center(
                                child: Icon(
                              Icons.check,
//                                  color:_option.isSelected ? white : green,)
                              color: white,
                            )),
                            decoration: BoxDecoration(
//                              color: _option.isSelected
//                                  ? green
//                                  : white,
                                color: white,
                                border: Border.all(width: 2.0, color: green),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Text(
                          'Correct Answer',
                          style: normalText_2,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: height),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Answer 4',
                      style: normalText_1,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height),
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
                          hintText: "This is a framework",
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: width * 2),
                          child: Container(
                            height: width * 8,
                            width: width * 8,
                            child: Center(
                                child: Icon(
                              Icons.check,
//                                  color:_option.isSelected ? white : green,)
                              color: white,
                            )),
                            decoration: BoxDecoration(
//                              color: _option.isSelected
//                                  ? green
//                                  : white,
                                color: white,
                                border: Border.all(width: 2.0, color: green),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Text(
                          'Correct Answer',
                          style: normalText_2,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
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
                  Container(
                    height: height * 7,
                    width: width * 45,
                    alignment: Alignment.center,
                    child: BlueButton(
                      buttonText: 'Save and go next',
                      action: () {
//                        Navigator.pushNamed(context, '/addAnswer');
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
