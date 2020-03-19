import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class DomainGrid extends StatelessWidget {

  final String domainText;
  final VoidCallback action;
  final String image;

//  Button()

  DomainGrid({
    Key key,
    @required this.domainText,
    @required this.action,
    @required this.image
  })  : assert(domainText != null),
        assert(action != null),
        assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Column(
        children: <Widget>[
          Container(
            width: width*40,
            height: width*40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(child: Text(domainText,style: normalText_2,),
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
          ),),
        ],
      ),
    );
  }
}
