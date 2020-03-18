import 'package:equatable/equatable.dart';

abstract class UpskillEvent extends Equatable {
  const UpskillEvent();

  @override
  List<Object> get props => [];
}

//class UpskillNextScreen extends UpskillEvent{}
class UpskillTutorialEvent extends UpskillEvent {}

class UpskillSurveyEvent extends UpskillEvent {}

class UpskillDomainEvent extends UpskillEvent {}

class UpskillUserEvent extends UpskillEvent {}

class UpskillContributorEvent extends UpskillEvent {}
