import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/models/models.dart';


class ImageTextOption extends StatelessWidget {


  final AnswerModel _option;

  ImageTextOption(this._option);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding:  EdgeInsets.only(top:width*4,left: width*4),
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
          width: width*40,
          height: width*40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(_option.image),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        _option.text != null?
        Container(child: Text(_option.text,style: topicSubtitleText,),
          width: width*40,
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: black.withOpacity(0.1),
                    blurRadius: 2.0,
                    offset: Offset(0,4)
                )
              ]
          ),)
        : Container( width: width*40,
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: black.withOpacity(0.1),
                    blurRadius: 2.0,
                    offset: Offset(0,4)
                )
              ]
          ),),
      ],
    );
  }
}
