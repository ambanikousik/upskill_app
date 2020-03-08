import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class DomainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: UpskillAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width*4),
        child: Column(
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.symmetric(vertical:height*2),
              child: Text('Please select your domain',
              style: headline_2,),
            ),
          ],
        ),
      ),
    );
  }
}
