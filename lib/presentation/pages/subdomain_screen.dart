import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class SubdomainScreen extends StatelessWidget {
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
                  "Thank you! Let's start",
                  style: headline_1,
                ),
              ),
              WhiteButton(
                buttonText: 'Front end',
                action: () {
                  Navigator.pushNamed(context, '/topic');
                },
              ),
              WhiteButton(
                buttonText: 'Back end',
                action: () {
                  Navigator.pushNamed(context, '/topic');
                },
              ),
              WhiteButton(
                buttonText: 'Full stack',
                action: () {
                  Navigator.pushNamed(context, '/topic');
                },
              ),
              WhiteButton(
                buttonText: 'UX design',
                action: () {
                  Navigator.pushNamed(context, '/topic');
                },
              ),
              WhiteButton(
                buttonText: 'Android',
                action: () {
                  Navigator.pushNamed(context, '/topic');
                },
              ),
            ],
          ),
        ),
      ));
  }
}
