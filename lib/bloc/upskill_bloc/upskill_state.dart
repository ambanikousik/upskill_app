import 'package:equatable/equatable.dart';
import 'package:upskillapp/models/models.dart';
import 'package:meta/meta.dart';

abstract class UpskillState extends Equatable {
  const UpskillState();

  @override
  List<Object> get props => [];
}

class UpskillSplash extends UpskillState {}

class UpskillLoading extends UpskillState {}


class UpskillTutorial extends UpskillState {}

class UpskillSurvey extends UpskillState {}

class UpskillDomain extends UpskillState {

  final DomainsList domainsList;

  const UpskillDomain({@required this.domainsList})
      : assert(domainsList != null);

  @override
  List<Object> get props => [domainsList];

  @override
  String toString() =>
      'Domains { domains: ${domainsList.domains.length}}';
}

class UpskillUser extends UpskillState {}

class UpskillContributor extends UpskillState {}

class UpskillError extends UpskillState {}
