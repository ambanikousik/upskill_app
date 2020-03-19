import 'package:equatable/equatable.dart';

abstract class ContributorState extends Equatable {
  const ContributorState();
  @override
  List<Object> get props => [];
}


class ContributorTutorialState extends ContributorState {}

class ContributorCreateTestState extends ContributorState {}

class ContributorAddDetailsState extends ContributorState {}

class ContributorAddQuestionState extends ContributorState {}

class ContributorAddAnswerState extends ContributorState {}

class ContributorAddAnotherQuestionState extends ContributorState {}

class ContributorQuestionListState extends ContributorState {}

class ContributorCongratulationsState extends ContributorState {}

class ContributorEditTestState extends ContributorState {}

class ContributorProfileState extends ContributorState {}

class ContributorTestDetailsState extends ContributorState {}
