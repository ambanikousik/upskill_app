import 'package:equatable/equatable.dart';

abstract class UpskillState extends Equatable {
  const UpskillState();

  @override
  List<Object> get props => [];
}

class UpskillSplash extends UpskillState {}

class UpskillTutorial extends UpskillState {}

class UpskillSurvey extends UpskillState {}

class UpskillDomain extends UpskillState {}

class UpskillUser extends UpskillState {}

class UpskillContributor extends UpskillState {}
