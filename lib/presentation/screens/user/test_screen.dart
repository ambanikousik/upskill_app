import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/bloc/bloc.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';
import 'package:upskillapp/models/models.dart';

class TestScreen extends StatelessWidget {
  final Test test;

  TestScreen({
    Key key,
    @required this.test,
  })
      : assert(test != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width * 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BlocBuilder<TimerBloc, TimerState>(
                builder: (context, state) {
                  final String minutesStr = ((state.duration / 60) % 60)
                      .floor()
                      .toString()
                      .padLeft(2, '0');
                  final String secondsStr =
                  (state.duration % 60).floor().toString().padLeft(2, '0');
                  return RemainingTime(
                    minute: minutesStr,
                    second: secondsStr,
                  );
                },
              ),
              BlocBuilder<TestBloc, TestState>(
                // ignore: missing_return
                  builder: (context, state) {
                    if (state is InitialTestState) {
                      return TestSplash(
                        test: test,
                      );
                    }
                    if (state is QuestionTestState) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          state.question.image != null
                              ? Container()
                              : SizedBox(
                            height: height * 5,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: height * 2),
                            child: Text(
                              state.question.text,
                              style: headline_2,
                            ),
                          ),
                          state.question.image != null
                              ? Padding(
                            padding: EdgeInsets.only(bottom: height * 2),
                            child: Image.asset(questionImg),
                          )
                              : Container(),
                          AnswerOptions(
                            answers: state.answers,
                          ),
                          SizedBox(
                            height: height * 5,
                          ),
                          BlueButton(
                            buttonText: 'Submit Answer',
                            action: () {
                              if (state.index < test.questions.length - 1) {
                                submittedAnswers.add(selectedAnswer);
                                BlocProvider.of<TestBloc>(context).add(
                                    NextQuestionTestEvent(
                                        index: state.index + 1, test: test));
                              } else {
                                submittedAnswers.add(selectedAnswer);
                                List<int> _correctAnswers = [];
                                test.questions.forEach((element) {
                                  _correctAnswers.add(element.correctAnswer);
                                });
                                BlocProvider.of<TimerBloc>(context).add(
                                    Pause());
                                BlocProvider.of<UserBloc>(context).add(
                                    ResultUserEvent(
                                        correctAnswers: _correctAnswers,
                                        submittedAnswers: submittedAnswers));
                              }
                            },
                          ),
                        ],
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
