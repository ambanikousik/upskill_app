import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class AddAnswerOption extends StatelessWidget {
  final String answer;
  final VoidCallback action;
  final double textSize;

//  Button()

  AddAnswerOption(
      {Key key, @required this.answer, @required this.action, this.textSize})
      : assert(answer != null),
        assert(action != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
