import 'dart:async';
import 'package:bloc/bloc.dart';
import '../bloc.dart';

class UpskillBloc extends Bloc<UpskillEvent, UpskillState> {
  @override
  UpskillState get initialState => UpskillSplash();

  @override
  Stream<UpskillState> mapEventToState(
    UpskillEvent event,
  ) async* {
//    if(event is UpskillNextScreen){
//      if(state is UpskillSplash){
//        yield UpskillTutorial();
//      }
//     else if(state is UpskillTutorial){
//       yield UpskillSurvey();
//      }
//     else if(state is UpskillSurvey){
//       yield UpskillDomain();
//      }
//    }

    if (event is UpskillTutorialEvent) {
      yield UpskillTutorial();
    }
    if (event is UpskillSurveyEvent) {
      yield UpskillSurvey();
    }
    if (event is UpskillDomainEvent) {
      yield UpskillDomain();
    }
    if (event is UpskillUserEvent) {
      yield UpskillUser();
    }
    if (event is UpskillContributorEvent) {
      yield UpskillContributor();
    }
  }
}
