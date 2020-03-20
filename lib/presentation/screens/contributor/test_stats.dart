import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:upskillapp/models/models.dart';

class TestStats extends StatelessWidget {

  final TestStatsModel testStatsModel;

  const TestStats({@required this.testStatsModel})
      : assert(testStatsModel != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(
        action: () {
          BlocProvider.of<ContributorBloc>(context).add(
              ContributorProfileEvent());
        },
      ),
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
                  testStatsModel.title,
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
                        testStatsModel.created,
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
                        testStatsModel.coding,
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
                        testStatsModel.view.toString(),
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
                        testStatsModel.completed.toString(),
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
