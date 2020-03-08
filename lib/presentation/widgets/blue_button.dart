import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class BlueButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback action;

//  Button()

   BlueButton({
    Key key,
    @required this.buttonText,
     @required this.action,
  })  : assert(buttonText != null),
         assert(action != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: action,
        child: Container(
          alignment: Alignment.center,
          width: width*80,
          height: height*8,
          child: Text(buttonText,
            style: TextStyle(color: Colors.white,fontSize: width*5,fontWeight: FontWeight.w500),),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
