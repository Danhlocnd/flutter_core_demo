import 'package:flutter/material.dart';
import '../core/app_bloc.dart';

class BlocProvider extends InheritedWidget {
  final AppBloc appBloc;

  BlocProvider({Key key, this.appBloc, Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static AppBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider)
          .appBloc;
}
