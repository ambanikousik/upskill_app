import 'package:equatable/equatable.dart';

abstract class ContributorState extends Equatable {
  const ContributorState();
}

class InitialContributorState extends ContributorState {
  @override
  List<Object> get props => [];
}
