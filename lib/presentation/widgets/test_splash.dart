import 'package:upskillapp/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/models/models.dart';

class TestSplash extends StatelessWidget {
  final Test test;

  const TestSplash({@required this.test}) : assert(test != null);

  void nextScreen(BuildContext context) {
    Future.delayed(Duration(milliseconds: 10), () {
      BlocProvider.of<TestBloc>(context)
          .add(NextQuestionTestEvent(index: 0, test: test));
    });
  }

  @override
  Widget build(BuildContext context) {
    nextScreen(context);
    return Container();
  }
}
