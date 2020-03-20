import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class SubdomainUserEvent extends UserEvent {}

class TopicUserEvent extends UserEvent {}

class TestUserEvent extends UserEvent {}

class ResultUserEvent extends UserEvent {
  final List<int> submittedAnswers;
  final List<int> correctAnswers;

  const ResultUserEvent({
    @required this.submittedAnswers,
    @required this.correctAnswers})
      : assert(submittedAnswers != null),
        assert(correctAnswers != null);

  @override
  List<Object> get props => [correctAnswers, submittedAnswers];

  @override
  String toString() =>
      'ResultUserEvent { correct: $correctAnswers submitted: $submittedAnswers }';

}

class AnalysisUserEvent extends UserEvent {}

class LoginUserEvent extends UserEvent {}

class SignUpUserEvent extends UserEvent {}