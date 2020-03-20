import 'package:flutter/material.dart';
import 'package:upskillapp/models/models.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class AnswerOptions extends StatefulWidget {
  final List<AnswerModel> answers;

  AnswerOptions({
    Key key,
    @required this.answers,
  })  : assert(answers != null),
        super(key: key);

  @override
  _AnswerOptionsState createState() => _AnswerOptionsState();
}

class _AnswerOptionsState extends State<AnswerOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.answers[0].image == null ?
          //only text
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: true,
              itemCount: widget.answers.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  splashColor: green,
                  onTap: () {
                    setState(() {
                      if (widget.answers[index].isSelected == true) {
                        widget.answers
                            .forEach((element) => element.isSelected = false);
                        selectedAnswer = 0;
                      } else {
                        widget.answers
                            .forEach((element) => element.isSelected = false);
                        widget.answers[index].isSelected = true;
                        selectedAnswer = index + 1;
                      }
                      print(selectedAnswer);
                    });
                  },
                  child: OnlyTextOption(widget.answers[index]),
                );
              })
          //only image
          :  GridView.builder(
        shrinkWrap: true,
        primary: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.answers.length,
          gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          childAspectRatio: widget.answers[0].text != null ?   1/1.1 : 1 ),
          itemBuilder: (BuildContext context, int index) {
          return InkWell(
              splashColor: green,
              onTap: () {
                setState(() {
                  if (widget.answers[index].isSelected == true) {
                    widget.answers
                        .forEach((element) => element.isSelected = false);
                  } else {
                    widget.answers
                        .forEach((element) => element.isSelected = false);
                    widget.answers[index].isSelected = true;
                  }
                });
              },
              child: ImageTextOption(widget.answers[index]));
          }),
    );
  }
}
