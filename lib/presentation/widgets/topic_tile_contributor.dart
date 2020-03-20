import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:meta/meta.dart';

class TopicTileContributor extends StatelessWidget {
  final String title;
  final int participants;
  final String date;
  final VoidCallback action;
  final String image;
  final bool approved;

  TopicTileContributor(
      {Key key,
      @required this.title,
      @required this.action,
      @required this.image,
      @required this.participants,
      @required this.date,
      @required this.approved})
      : assert(title != null),
        assert(action != null),
        assert(image != null),
        assert(participants != null),
        assert(date != null),
        assert(approved != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height),
      child: GestureDetector(
        onTap: action,
        child: Container(
          height: height * 13,
          padding: EdgeInsets.symmetric(horizontal: width * 2),
          child: Row(
            children: <Widget>[
              Container(
                height: height * 10,
                child: Image.network(image),
              ),
//              SizedBox(width: width*2,),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title, style: topicTitleText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Participants',
                            style: topicSubtitleText,
                          ),
                          approved == false
                              ? Container(
                                  child: Text(
                                    'Pending',
                                    style: TextStyle(
                                        color: blue,
                                        fontSize: width * 4,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: height / 1.5,
                                      horizontal: width * 2),
                                  color: blue.withOpacity(0.1),
                                )
                              : Text(
                                  participants.toString(),
                                  style: topicSubtitleGreen,
                                ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Date',
                            style: topicSubtitleText,
                          ),
                          Text(
                            date,
                            style: topicSubtitleText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: black.withOpacity(0.2),
                    blurRadius: 5.0,
                    offset: Offset(0, 2)),
              ]),
        ),
      ),
    );
  }
}
