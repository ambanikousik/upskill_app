import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:upskillapp/models/answer_model.dart';
import 'package:upskillapp/models/models.dart';
import '../bloc.dart';
import 'package:meta/meta.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  final UserBloc userBloc;

  TestBloc({
    @required this.userBloc,
  }) : assert(userBloc != null);

  @override
  TestState get initialState => InitialTestState();

  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) async* {
    if (event is NextQuestionTestEvent) {
      int _index = event.index;
      List<AnswerModel> _answers = [];
      event.test.questions[_index].answers.forEach((answer) {
        AnswerModel _answerModel = AnswerModel(isSelected: false, text: answer);
        _answers.add(_answerModel);
      });
      QuestModel _question =
          QuestModel(text: event.test.questions[_index].question);
      yield QuestionTestState(
          answers: _answers, question: _question, index: _index);
    }
    if (event is ResetTestEvent) {
      yield InitialTestState();
    }
  }
}
