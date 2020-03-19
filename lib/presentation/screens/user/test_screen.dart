import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:upskillapp/models/models.dart';



class TestScreen extends StatelessWidget {

  final List<AnswerModel> answers;
  final QuestModel question;
  final String route;


  TestScreen({
    Key key,
    @required this.answers,
    @required this.question,
    @required this.route,
  })  : assert(answers != null),
        assert(question != null),
        assert(route != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: UpskillAppBar(),
    body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: width*6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              RemainingTime(),
            question.image!=null?Container():SizedBox(height: height*5,),
            Padding(
                padding:  EdgeInsets.symmetric(vertical:height*2),
                child: Text(question.text,
                  style: headline_2,),
              ),
              question.image!=null?Padding(padding: EdgeInsets.only(bottom: height*2), child: Image.asset(questionImg),):Container(),
              AnswerOptions(answers: answers,),
              SizedBox(height: height*5,),
              BlueButton(
                buttonText: 'Submit Answer',
                action: (){
                  BlocProvider.of<UserBloc>(context).add(ResultUserEvent());
                },
              )
            ],
          ),
      ),
    )
    ,);
  }
}
