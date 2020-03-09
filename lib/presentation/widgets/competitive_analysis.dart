import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class CompetitiveAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: height, horizontal: width * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: height,
            ),
            child: Text(
              'Competetive Analysis',
              style: topicTitleText,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: height,
            ),
            child: Text(
              'My Score',
              style: normalText_1,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Container(
                    height: height * 3,
                    width: width * 25,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: green, borderRadius: BorderRadius.circular(5)),
                  ),
                  height: height * 3,
//             width: width*100,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: green.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 2,
                ),
                child: Text(
                  '8.5',
                  style: smallBold,
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: height,
            ),
            child: Text(
              'Avg. Score',
              style: normalText_1,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Container(
                    height: height * 3,
                    width: width * 55,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: green, borderRadius: BorderRadius.circular(5)),
                  ),
                  height: height * 3,
//             width: width*100,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: green.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 2,
                ),
                child: Text(
                  '16',
                  style: smallBold,
                ),
              )
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: green.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
