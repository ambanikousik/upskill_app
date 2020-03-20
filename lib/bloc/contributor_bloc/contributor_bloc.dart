import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:upskillapp/models/contributor_model.dart';
import '../bloc.dart';
import 'package:upskillapp/repository/repositories.dart';
import 'package:meta/meta.dart';

class ContributorBloc extends Bloc<ContributorEvent, ContributorState> {

  UpskillRepository upskillRepository;

  ContributorBloc({@required this.upskillRepository})
      : assert(upskillRepository != null);

  @override
  ContributorState get initialState => ContributorTutorialState();

  @override
  Stream<ContributorState> mapEventToState(ContributorEvent event,) async* {
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
      yield ContributorLoadingState();
      try {
        final ContributorModel contributorModel = await upskillRepository
            .getContributor();
        yield ContributorProfileState();
      } catch (_) {
        yield ContributorErrorState();
      }
    }
    if (event is ContributorTestDetailsEvent) {
      yield ContributorLoadingState();
      try {
        final ContributorModel contributorModel = await upskillRepository
            .getContributor();
        yield ContributorTestDetailsState(contributorModel: contributorModel);
      } catch (_) {
        yield ContributorErrorState();
      }
    }
    if (event is ContributorQuestionListEvent) {
      yield ContributorQuestionListState();
    }
  }
}
