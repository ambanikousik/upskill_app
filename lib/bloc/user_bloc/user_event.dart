import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class SubdomainUserEvent extends UserEvent {}

class TopicUserEvent extends UserEvent {}

class TestUserEvent extends UserEvent {}

class ResultUserEvent extends UserEvent {}

class AnalysisUserEvent extends UserEvent {}
