
import 'package:fluttercoredemo/auth/auth_bloc.dart';

class AppBloc {
  AuthBloc _authBloc;

  AuthBloc get authBloc => _authBloc;

  AppBloc() {
    this._authBloc = AuthBloc();
  }
}
