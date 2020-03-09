import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalyticScreen extends StatelessWidget {
  int touchedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: width * 100,
          margin: EdgeInsets.symmetric(horizontal: width * 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 5),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'My Score is',
                      style: headline_2,
                      children: <TextSpan>[
                        TextSpan(
                          text: '\n70%',
                          style: headlineGreen,
                        )
                      ]),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: height * 2, horizontal: width * 6),
                child: BarChart(mainBarData()),
                color: Colors.green.withOpacity(0.1),
                width: width * 100,
              ),
              ScoreBoard(),
              CompetitiveAnalysis(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Container(
                  width: width * 100,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(
                      vertical: height * 2, horizontal: width * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Ranking 21',
                        style: headline_2,
                      ),
                      Text(
                        'You are better than 81% of the people',
                        style: topicTitleText,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: green.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: height * 2,
              )
            ],
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.green,
    double width = 50,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y + 1 : y,
          color: isTouched ? Colors.yellow : barColor,
          width: width,
          borderRadius: BorderRadius.circular(10),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            y: 20,
            color: Colors.transparent,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(3, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 5, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 10, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 20, isTouched: i == touchedIndex);
          default:
            return null;
        }
      });

  BarChartData mainBarData() {
    return BarChartData(
      alignment: BarChartAlignment.spaceEvenly,
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = 'Node';
                  break;
                case 1:
                  weekDay = 'Angular';
                  break;
                case 2:
                  weekDay = 'Vue';
                  break;
              }
              return BarTooltipItem(weekDay + '\n' + (rod.y - 1).toString(),
                  TextStyle(color: Colors.yellow));
            }),
        touchCallback: (barTouchResponse) {
//          setState(() {
//            if (barTouchResponse.spot != null &&
//                barTouchResponse.touchInput is! FlPanEnd &&
//                barTouchResponse.touchInput is! FlLongPressEnd) {
//              touchedIndex = barTouchResponse.spot.touchedBarGroupIndex;
//            } else {
//              touchedIndex = -1;
//            }
//          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          textStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'Node';
              case 1:
                return 'Angular';
              case 2:
                return 'Vue';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
          margin: 32,
          reservedSize: 14,
          getTitles: (value) {
            if (value == 0) {
              return 'Beg';
            } else if (value == 10) {
              return 'Inc';
            } else if (value == 19) {
              return 'Pro';
            } else {
              return '';
            }
          },
        ),
      ),
      gridData: FlGridData(
        show: true,
        checkToShowHorizontalLine: (value) {
//          => value % 5 == 0
          if (value == 1) {
            return true;
          } else if (value == 10) {
            return true;
          } else if (value == 19) {
            return true;
          } else {
            return false;
          }
        },
        getDrawingHorizontalLine: (value) {
          if (value == 0) {
            return const FlLine(color: Colors.black12, strokeWidth: 0.8);
          }
          return const FlLine(
            color: Colors.black12,
            strokeWidth: 0.8,
          );
        },
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }
}
