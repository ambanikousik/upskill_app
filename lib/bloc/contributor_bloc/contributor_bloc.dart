import 'dart:async';
import 'package:bloc/bloc.dart';
import '../bloc.dart';

class ContributorBloc extends Bloc<ContributorEvent, ContributorState> {
  @override
  ContributorState get initialState => ContributorTutorialState();

  @override
  Stream<ContributorState> mapEventToState(
    ContributorEvent event,
  ) async* {
    if (event is ContributorTutorialEvent) {
      yield ContributorTutorialState();
    }
    if (event is ContributorCreateTestEvent) {
      yield ContributorCreateTestState();
    }
    if (event is ContributorAddDetailsEvent) {
      yield ContributorAddDetailsState();
    }
    if (event is ContributorAddQuestionEvent) {
      yield ContributorAddQuestionState();
    }
    if (event is ContributorAddAnswerEvent) {
      yield ContributorAddAnswerState();
    }
    if (event is ContributorAddAnotherQuestionEvent) {
      yield ContributorAddAnotherQuestionState();
    }
    if (event is ContributorCongratulationsEvent) {
      yield ContributorCongratulationsState();
    }
    if (event is ContributorEditTestEvent) {
      yield ContributorEditTestState();
    }
    if (event is ContributorProfileEvent) {
      yield ContributorProfileState();
    }
    if (event is ContributorTestDetailsEvent) {
      yield ContributorTestDetailsState();
    }
    if (event is ContributorQuestionListEvent) {
      yield ContributorQuestionListState();
    }
  }
}
