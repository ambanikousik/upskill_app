import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class WhiteButton extends StatelessWidget {

  final String buttonText;
  final VoidCallback action;
  final IconData icon;


  WhiteButton({
    Key key,
    @required this.buttonText,
    @required this.action,
    this.icon,
  })  : assert(buttonText != null),
        assert(action != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: height),
      child: GestureDetector(
        onTap: action,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: width*2),
          child: Row(
            children: <Widget>[
              icon == null ? SizedBox(width: width*6,) :Icon(icon,color: green,size: width*6,),
              SizedBox(width: width*2,),
              Expanded(child: Text(buttonText,
                style: normalText_2,),),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width,vertical: height/1.5),
                child: Icon(Icons.keyboard_arrow_right,color: green,size:width* 6,),
                decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: green),
                    borderRadius: BorderRadius.circular(5)
                ),
              ),
            ],
          ),
          height: height*8,
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: black.withOpacity(0.2),
                    blurRadius: 5.0,
                    offset: Offset(0,2)
                )
              ]
          ),
        ),
      ),
    );
  }
}
