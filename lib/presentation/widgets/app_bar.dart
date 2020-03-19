import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class UpskillAppBar extends StatefulWidget implements PreferredSizeWidget {
  final VoidCallback action;

//  EditQuestion({
//    Key key,
//    @required this.action,
//  })  : assert(action != null),
//        super(key: key);

  UpskillAppBar({Key key,
    this.action})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _UpskillAppBarState createState() => _UpskillAppBarState();
}

class _UpskillAppBarState extends State<UpskillAppBar>{


  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: widget.action != null ? IconButton(
        icon: Icon(Icons.subdirectory_arrow_left),
        iconSize: width * 8,
        onPressed: widget.action,) : null,
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      elevation: 0,
      backgroundColor: white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: width * 9,
              child: Image.asset(logoWithoutName)),
          Text('Upskill', style: headline_2,),
          SizedBox(width: width * 12,),
        ],
      ),);
  }
}