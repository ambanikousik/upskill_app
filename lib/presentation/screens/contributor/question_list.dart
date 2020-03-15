import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class QuestionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: width * 6, vertical: height * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Set time of test',
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
                    hintText: "10 Minutes",
                  ),
                ),
              ),
              EditQuestion(),
              EditQuestion(),
              EditQuestion(),
              EditQuestion(),
              EditQuestion(),
              EditQuestion(),
              EditQuestion(),
            ],
          ),
        ),
      ),
    );
  }
}
