import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:upskillapp/presentation/presentation.dart';
import '../bloc.dart';
import 'package:upskillapp/models/models.dart';
import 'package:upskillapp/repository/repositories.dart';
import 'package:meta/meta.dart';

class UpskillBloc extends Bloc<UpskillEvent, UpskillState> {

  UpskillRepository upskillRepository;

  UpskillBloc({@required this.upskillRepository})
      : assert (upskillRepository != null);

  @override
  UpskillState get initialState => UpskillSplash();

  @override
  Stream<UpskillState> mapEventToState(UpskillEvent event,) async* {
    if (event is UpskillTutorialEvent) {
      yield UpskillTutorial();
    }

    if (event is UpskillSurveyEvent) {
      yield UpskillSurvey();
    }

    if (event is UpskillDomainEvent) {
      yield UpskillLoading();
      try {
        final DomainsList domainsList = await upskillRepository.getDomains();
        yield UpskillDomain(domainsList: domainsList);
      }
      catch (_) {
        yield UpskillError();
      }
    }

    if (event is UpskillUserEvent) {
      yield UpskillUser();
    }

    if (event is UpskillContributorEvent) {
      yield UpskillContributor();
    }
  }
}
