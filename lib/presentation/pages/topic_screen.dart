import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class TopicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: UpskillAppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width*4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.symmetric(vertical:height*2),
              child: Text(
                "Select a test now",
                style: headline_1,
              ),
            ),
            TopicTile(
              title: 'Vue',
              image: vue,
              quesNumber: 30,
              time: 50,
              action: () {
                Navigator.pushNamed(context, '/test1');
              },
            ),
            TopicTile(
              title: 'Angular',
              image: angular,
              quesNumber: 36,
              time: 30,
              action: () {
                Navigator.pushNamed(context, '/test1');
              },
            ),
            TopicTile(
              title: 'Node',
              image: node,
              quesNumber: 20,
              time: 30,
              action: () {
                Navigator.pushNamed(context, '/test1');
              },
            ),
          ],
        ),
      ),
    );
  }
}
