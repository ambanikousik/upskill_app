import 'package:meta/meta.dart';

class TestStatsModel {
  final String title;
  final String image;
  final String created;
  final String coding;
  final int view;
  final int completed;

  TestStatsModel(
      {@required this.title,
      @required this.image,
      @required this.created,
      @required this.coding,
      @required this.view,
      @required this.completed});
}
