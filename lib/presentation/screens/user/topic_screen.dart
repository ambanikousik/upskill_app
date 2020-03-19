import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:upskillapp/models/models.dart';

class TopicScreen extends StatelessWidget {

  final TopicsList topicsList;

  TopicScreen({
    Key key,
    @required this.topicsList,
  })
      : assert(topicsList != null),
        super(key: key);

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
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: topicsList.topics.length,
                itemBuilder: (BuildContext context, int index) {
                  return TopicTile(
                    title: topicsList.topics[index].title,
                    image: topicsList.topics[index].image,
                    quesNumber: topicsList.topics[index].questions,
                    time: topicsList.topics[index].time,
                    action: () {
                      BlocProvider.of<UserBloc>(context).add(TestUserEvent());
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
