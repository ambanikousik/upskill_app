import 'dart:async';
import 'package:bloc/bloc.dart';
import '../bloc.dart';

class ContributorBloc extends Bloc<ContributorEvent, ContributorState> {
  @override
  ContributorState get initialState => InitialContributorState();

  @override
  Stream<ContributorState> mapEventToState(
    ContributorEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
