import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class SurveyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: UpskillAppBar(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: width * 5),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.symmetric(vertical:height*2),
                  child: Container(
                    height: height * 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(cover2))),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical:height*2),
                  child: Text(
                    'Why do you want to assess yourself?',
                    style: headline_1,
                  ),
                ),
                WhiteButton(
                  buttonText: 'To check my skill',
                  icon: Icons.star_border,
                  action: () {
                    Navigator.pushNamed(context, '/domain');
                  },
                ),
                WhiteButton(
                  buttonText: 'To improve',
                  icon: Icons.bookmark_border,
                  action: () {
                    Navigator.pushNamed(context, '/domain');
                  },
                ),
                WhiteButton(
                  buttonText: 'For fun',
                  icon: Icons.sentiment_satisfied,
                  action: () {
                    Navigator.pushNamed(context, '/domain');
                  },
                ),
                WhiteButton(
                  buttonText: 'To learn',
                  icon: Icons.star_border,
                  action: () {
                    Navigator.pushNamed(context, '/domain');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
