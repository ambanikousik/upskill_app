import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class UpskillAppBar extends StatefulWidget implements PreferredSizeWidget {
  UpskillAppBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _UpskillAppBarState createState() => _UpskillAppBarState();
}

class _UpskillAppBarState extends State<UpskillAppBar>{

  @override
  Widget build(BuildContext context) {
    return AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        backgroundColor: white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: width*9,
                child: Image.asset(logoWithoutName)),
            Text('Upskill',style: headline_2,),
            SizedBox(width: width*12,),
          ],
        ), );
  }
}