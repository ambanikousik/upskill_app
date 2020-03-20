import 'package:equatable/equatable.dart';
import 'package:upskillapp/models/contributor_model.dart';
import 'package:meta/meta.dart';
import 'package:upskillapp/models/models.dart';

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

class ContributorProfileState extends ContributorState {

  final ContributorModel contributorModel;

  const ContributorProfileState({@required this.contributorModel})
      : assert(contributorModel != null);

  @override
  List<Object> get props => [contributorModel];

  @override
  String toString() =>
      'ContributorProfileState { name: ${contributorModel.name}}';
}

class ContributorTestDetailsState extends ContributorState {

  final TestStatsModel testStatsModel;

  const ContributorTestDetailsState({@required this.testStatsModel})
      : assert(testStatsModel != null);

  @override
  List<Object> get props => [testStatsModel];

  @override
  String toString() =>
      'ContributorTestDetailsState { title: ${testStatsModel.title}}';
}

class ContributorLoadingState extends ContributorState {}

class ContributorErrorState extends ContributorState {}

