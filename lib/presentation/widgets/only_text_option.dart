import 'package:flutter/material.dart';
import 'package:upskillapp/models/models.dart';
import 'package:upskillapp/data/data.dart';

class OnlyTextOption extends StatelessWidget {
  final AnswerModel _option;

  OnlyTextOption(this._option);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding:  EdgeInsets.symmetric(vertical:height),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:width*4),
              child: Container(
                height: width*8,
                width: width*8,
                child: Center(
                  child: Icon(Icons.check,
                  color:_option.isSelected ? white : green,)
                ),
                decoration: BoxDecoration(
                  color: _option.isSelected
                      ? green
                      : white,
                  border: Border.all(
                      width: 2.0,
                      color: green),
                  shape: BoxShape.circle,
                ),
              ),
            ),
//            SizedBox(width: width*4,),
            Text(_option.text,
              style: normalText_3,),
          ],
        ),
    );
  }
}
