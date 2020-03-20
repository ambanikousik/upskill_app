import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class CompetitiveAnalysis extends StatelessWidget {
  final double score;
  final int avgScore;


  CompetitiveAnalysis({
    Key key,
    @required this.score,
    @required this.avgScore,
  })
      : assert(score != null),
        assert(avgScore != null),
        super(key: key);


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
                    width: width * score,
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
                  score.toStringAsFixed(1),
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
                    width: width * avgScore,
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
