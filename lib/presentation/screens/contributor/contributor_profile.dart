import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class ContributorProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * 4, vertical: height * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: width * 35,
                      width: width * 35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(profile),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                        right: 00.0,
                        top: width * 23,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.camera_alt, color: blue,),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: blue)
                          ),))
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 2),
                  child: Text(
                    'Eugene Bailey',
                    style: headline_2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'My tests statistics',
                  style: topicTitleText,
                ),
              ),
              TopicTileContributor(
                title: 'Angular',
                image: angular,
                date: '20/01/2020',
                participants: 240,
                approved: true,
                action: () {
                  Navigator.pushNamed(context, '/testStats');
                },
              ),
              TopicTileContributor(
                title: 'Vue',
                image: vue,
                date: '20/01/2020',
                participants: 170,
                approved: true,
                action: () {
                  Navigator.pushNamed(context, '/testStats');
                },
              ),
              TopicTileContributor(
                title: 'Node.JS',
                image: node,
                date: '20/01/2020',
                participants: 240,
                approved: false,
                action: () {
                  Navigator.pushNamed(context, '/testStats');
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Claim Rewards',
                  style: topicTitleText,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        width: width * 25,
                        child: Text('20pt', style: normalText_1,)),
                    Container(
                        alignment: Alignment.centerLeft,
                        width: width * 30,
                        child: Text('5% discount', style: normalText_1)),
                    Container(
                      width: width * 30,
                      height: height * 7,
                      child: BlueButton(
                        buttonText: 'Claim',
                        action: () {

                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        width: width * 25,
                        child: Text('100pt', style: normalText_1,)),
                    Container(
                        alignment: Alignment.centerLeft,
                        width: width * 30,
                        child: Text('15% discount', style: normalText_1)),
                    Container(
                      width: width * 30,
                      height: height * 7,
                      child: BlueButton(
                        buttonText: 'Claim',
                        action: () {

                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
