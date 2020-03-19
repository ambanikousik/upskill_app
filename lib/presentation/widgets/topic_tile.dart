import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';

class TopicTile extends StatelessWidget {


  final String title;
  final int time;
  final int quesNumber;
  final VoidCallback action;
  final String image;


  TopicTile({
    Key key,
    @required this.title,
    @required this.action,
    @required this.image,
    @required this.time,
    @required this.quesNumber,
  })  : assert(title != null),
        assert(action != null),
        assert(image != null),
        assert(time != null),
        assert(quesNumber != null),
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: height),
      child: GestureDetector(
        onTap: action,
        child: Container(
          height: height*13,
          padding: EdgeInsets.symmetric(horizontal: width*2),
          child: Row(
            children: <Widget>[
              Container(
                height: height*10,
                child: Image.network(image),
              ),
//              SizedBox(width: width*2,),
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal:width*2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title,
                      style: topicTitleText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('$time min test',
                            style: topicSubtitleText,),
                          Text('$quesNumber Questions',
                            style: topicSubtitleGreen,),
                        ],
                      ),
                    ],
                  ),
                ),),
            ],
          ),
          decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: black.withOpacity(0.2),
                    blurRadius: 5.0,
                    offset: Offset(0,2)
                ),
              ]
          ),
        ),
      ),
    );
  }
}
