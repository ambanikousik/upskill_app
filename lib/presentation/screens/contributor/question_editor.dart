import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class QuestionEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: width * 4, vertical: height * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Edit Question',
                  style: topicTitleText,
                ),
              ),
              Text(
                'Q1',
                style: normalText_4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height,
                ),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Edit Answer',
                  style: topicTitleText,
                ),
              ),
              Text(
                'Answer 1',
                style: normalText_4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height,
                ),
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
              Text(
                'Answer 2',
                style: normalText_4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height,
                ),
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
              Text(
                'Answer 3',
                style: normalText_4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height,
                ),
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
              Text(
                'Answer 4',
                style: normalText_4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height,
                ),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Edit Time',
                  style: topicTitleText,
                ),
              ),
              Row(
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
              SizedBox(
                height: height * 5,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: width * 45,
                  height: height * 6.5,
                  child: BlueButton(
                    buttonText: 'Update now',
                    textSize: width * 4,
                    action: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
