import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:upskillapp/repository/upskill_repository.dart';
import '../bloc.dart';
import 'package:meta/meta.dart';
import 'package:upskillapp/models/models.dart';
import 'package:upskillapp/repository/repositories.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UpskillRepository upskillRepository;

  UserBloc({@required this.upskillRepository})
      : assert(upskillRepository != null);

  @override
  UserState get initialState => SplashUserState();

  @override
  Stream<UserState> mapEventToState(UserEvent event,) async* {
    if (event is SubdomainUserEvent) {
      yield LoadingUserState();
      try {
        final SubDomainsList subdomainsList =
        await upskillRepository.getSubDomains();
        yield SubdomainUserState(subdomainsList: subdomainsList);
      } catch (_) {
        yield ErrorUserState();
      }
    }
    if (event is TopicUserEvent) {
      yield LoadingUserState();
      try {
        final TopicsList topicsList = await upskillRepository.getTopics();
        yield TopicUserState(topicsList: topicsList);
      } catch (_) {
        yield ErrorUserState();
      }
    }
    if (event is TestUserEvent) {
      yield TestUserState();
    }
    if (event is ResultUserEvent) {
      yield ResultUserState();
    }
    if (event is AnalysisUserEvent) {
      yield AnalysisUserState();
    }
  }
}
