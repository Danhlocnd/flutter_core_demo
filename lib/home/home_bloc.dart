import 'package:fluttercoredemo/core/core_stream.dart';

class HomeBloc {
  int indexStack = 0;

  CoreStream<HomeIndexStackModel> homeIndexStackStream = CoreStream();
  CoreStream<LayoutNoAppBarModel> layoutNoAppBarStream = CoreStream();
}

class HomeIndexStackModel {
  int indexStack;

  HomeIndexStackModel({this.indexStack});
}

enum LayoutNoAppBarState { NONE, SCREENFULL1 }

class LayoutNoAppBarModel {
  LayoutNoAppBarState state;

  LayoutNoAppBarModel({this.state});
}
