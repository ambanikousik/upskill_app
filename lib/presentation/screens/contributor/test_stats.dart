import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class TestStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: width * 4, vertical: height * 4),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Vue Test',
                  style: headline_2,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 2),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 4),
                    child: Container(
                      padding: EdgeInsets.all(width * 2),
                      child: Icon(
                        Icons.calendar_today,
                        color: green,
                        size: width * 7,
                      ),
                      decoration: BoxDecoration(
                          color: green.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Created',
                        style: topicSubtitleText,
                      ),
                      Text(
                        '20/01/2020',
                        style: topicTitleText,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 2),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 4),
                    child: Container(
                      padding: EdgeInsets.all(width * 2),
                      child: Icon(
                        Icons.home,
                        color: green,
                        size: width * 7,
                      ),
                      decoration: BoxDecoration(
                          color: green.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Domain',
                        style: topicSubtitleText,
                      ),
                      Text(
                        'Coding',
                        style: topicTitleText,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 2),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 4),
                    child: Container(
                      padding: EdgeInsets.all(width * 2),
                      child: Icon(
                        Icons.location_searching,
                        color: green,
                        size: width * 7,
                      ),
                      decoration: BoxDecoration(
                          color: green.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'View',
                        style: topicSubtitleText,
                      ),
                      Text(
                        '213',
                        style: topicTitleText,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 2),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 4),
                    child: Container(
                      padding: EdgeInsets.all(width * 2),
                      child: Icon(
                        Icons.playlist_add_check,
                        color: green,
                        size: width * 7,
                      ),
                      decoration: BoxDecoration(
                          color: green.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Completed',
                        style: topicSubtitleText,
                      ),
                      Text(
                        '156',
                        style: topicTitleText,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Result',
                  style: headline_2,
                ),
              ),
            ),
            ScoreBoardContributor()
          ],
        ),
      ),
    );
  }
}
