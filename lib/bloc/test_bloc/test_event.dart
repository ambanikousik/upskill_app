import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:upskillapp/models/models.dart';

abstract class TestEvent extends Equatable {
  const TestEvent();

  @override
  List<Object> get props => [];
}

class ResetTestEvent extends TestEvent {}
class NextQuestionTestEvent extends TestEvent {
  final int index;
  final Test test;

  const NextQuestionTestEvent({@required this.index, @required this.test})
      : assert(index != null),
        assert(test != null);

  @override
  List<Object> get props => [index];

  @override
  String toString() => 'NextQuestionTestEvent { index: $index }';
}
