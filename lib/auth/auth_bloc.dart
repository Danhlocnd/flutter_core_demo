import 'package:fluttercoredemo/core/core_stream.dart';

class AuthBloc{

  CoreStream<AuthenticationModel> authStream = CoreStream();

}

enum AuthState {
  LOGIN_SUCCESS,
  LOGIN_FAILED,
  SPLASH,
}

class AuthenticationModel {
  AuthState state;
  dynamic data;

  AuthenticationModel(this.state, this.data);
}