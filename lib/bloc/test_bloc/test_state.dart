import 'package:equatable/equatable.dart';
import 'package:upskillapp/models/models.dart';
import 'package:meta/meta.dart';

abstract class TestState extends Equatable {
  const TestState();

  @override
  List<Object> get props => [];
}

class InitialTestState extends TestState {}

class QuestionTestState extends TestState {
  final QuestModel question;
  final List<AnswerModel> answers;
  final int index;

  const QuestionTestState(
      {@required this.question, @required this.answers, @required this.index})
      : assert(question != null),
        assert(index != null),
        assert(answers != null);

  @override
  List<Object> get props => [question, answers, index];

  @override
  String toString() =>
      'QuestionTestState { question: ${question.text} answer: ${answers.length} index: $index }';
}
