import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:upskillapp/models/contributor_model.dart';
import 'package:upskillapp/models/models.dart';
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
        yield ContributorProfileState(contributorModel: contributorModel);
      } catch (_) {
        yield ContributorErrorState();
      }
    }
    if (event is ContributorTestDetailsEvent) {
      final TestStatsModel _testStatsModel = TestStatsModel(
        title: event.contributorModel.stats[event.index].title,
        created: event.contributorModel.stats[event.index].created,
        completed: event.contributorModel.stats[event.index].completed,
        coding: event.contributorModel.stats[event.index].coding,
        image: event.contributorModel.stats[event.index].image,
        view: event.contributorModel.stats[event.index].view,
      );
      yield ContributorTestDetailsState(testStatsModel: _testStatsModel);
    }
    if (event is ContributorQuestionListEvent) {
      yield ContributorQuestionListState();
    }
  }
}
