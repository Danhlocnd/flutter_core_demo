import 'package:flutter/material.dart';
import 'package:fluttercoredemo/core/app_bloc.dart';
import 'package:fluttercoredemo/core/app_page.dart';
import 'package:fluttercoredemo/core/bloc_provider.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  final AppBloc appBloc = AppBloc();
  initializeDateFormatting().then(
        (_) => runApp(
      Application(
        appBloc: appBloc,
      ),
    ),
  );
}

class Application extends StatelessWidget {
  final AppBloc appBloc;

  const Application({Key key, this.appBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      appBloc: appBloc,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: AppPage(),
        ),
      ),
    );
  }
}
