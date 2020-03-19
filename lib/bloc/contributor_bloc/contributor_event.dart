import 'package:equatable/equatable.dart';

abstract class ContributorEvent extends Equatable {
  const ContributorEvent();

  @override
  List<Object> get props => [];
}

class ContributorTutorialEvent extends ContributorEvent {}

class ContributorCreateTestEvent extends ContributorEvent {}

class ContributorAddDetailsEvent extends ContributorEvent {}

class ContributorAddQuestionEvent extends ContributorEvent {}

class ContributorAddAnswerEvent extends ContributorEvent {}

class ContributorAddAnotherQuestionEvent extends ContributorEvent {}

class ContributorQuestionListEvent extends ContributorEvent {}

class ContributorCongratulationsEvent extends ContributorEvent {}

class ContributorEditTestEvent extends ContributorEvent {}

class ContributorProfileEvent extends ContributorEvent {}

class ContributorTestDetailsEvent extends ContributorEvent {}
