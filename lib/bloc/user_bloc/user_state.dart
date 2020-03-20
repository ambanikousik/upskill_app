import 'package:equatable/equatable.dart';
import 'package:upskillapp/models/models.dart';
import 'package:meta/meta.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class SplashUserState extends UserState {}

class SubdomainUserState extends UserState {
  final SubDomainsList subdomainsList;

  const SubdomainUserState({@required this.subdomainsList})
      : assert(subdomainsList != null);

  @override
  List<Object> get props => [subdomainsList];

  @override
  String toString() =>
      'SubdomainUserState { subdomains: ${subdomainsList.subdomains.length}}';
}

class TopicUserState extends UserState {
  final TopicsList topicsList;

  const TopicUserState({@required this.topicsList})
      : assert(topicsList != null);

  @override
  List<Object> get props => [topicsList];

  @override
  String toString() => 'TopicUserState { topics: ${topicsList.topics.length}}';
}

class TestUserState extends UserState {
  final Test test;

  const TestUserState({@required this.test})
      : assert(test != null);

  @override
  List<Object> get props => [test];

  @override
  String toString() =>
      'TestUserState { questions: ${test.questions.length} timeLimit: ${test
          .limit} testId: ${test.testId}}';
}

class ResultUserState extends UserState {

  final double grade;

  const ResultUserState({@required this.grade})
      : assert(grade != null);

  @override
  List<Object> get props => [grade];

  @override
  String toString() => 'ResultUserState { result: $grade}';

}

class AnalysisUserState extends UserState {

  final AnalysisModel stats;

  const AnalysisUserState({@required this.stats})
      : assert(stats != null);

  @override
  List<Object> get props => [stats];

  @override
  String toString() => 'AnalysisUserState { avg: ${stats.avg}}';

}

class LoadingUserState extends UserState {}

class ErrorUserState extends UserState {}
