import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class BlueButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback action;
  final double textSize;
//  Button()

   BlueButton({
    Key key,
    @required this.buttonText,
     @required this.action,
     this.textSize
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
            style: TextStyle(color: Colors.white,
                fontSize: textSize != null ? textSize : width * 5,
                fontWeight: FontWeight.w500),),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
