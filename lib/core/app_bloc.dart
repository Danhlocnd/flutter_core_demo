import 'package:fluttercoredemo/auth/auth_bloc.dart';
import 'package:fluttercoredemo/home/home_bloc.dart';

class AppBloc {
  AuthBloc _authBloc;

  AuthBloc get authBloc => _authBloc;

  HomeBloc _homeBloc;

  HomeBloc get homeBloc => _homeBloc;

  AppBloc() {
    this._authBloc = AuthBloc();
    this._homeBloc = HomeBloc();
  }
}
