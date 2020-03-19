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

class TestUserState extends UserState {}

class ResultUserState extends UserState {}

class AnalysisUserState extends UserState {}

class LoadingUserState extends UserState {}

class ErrorUserState extends UserState {}
