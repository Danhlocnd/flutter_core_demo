

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttercoredemo/auth/auth_bloc.dart';
import 'package:fluttercoredemo/auth/login_screen.dart';
import 'package:fluttercoredemo/auth/splash_screen.dart';
import 'package:fluttercoredemo/core/app_bloc.dart';
import 'package:fluttercoredemo/core/bloc_provider.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> with WidgetsBindingObserver {
  AppBloc appBloc;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    appBloc = BlocProvider.of(context);
    ScreenUtil.init(context,
        width: 1080, height: 1980, allowFontScaling: false);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            StreamBuilder(
              initialData: AuthenticationModel(AuthState.SPLASH, null),
              stream: appBloc.authBloc.authStream.stream,
              builder: (buildContext,
                  AsyncSnapshot<AuthenticationModel> snapshotData) {
                switch (snapshotData.data.state) {
                  case AuthState.LOGIN_FAILED:
                    return LoginScreen();
                    break;
                  case AuthState.LOGIN_SUCCESS:
                    return Container();
                    break;
                  default:
                    return SplashScreen();
                    break;
                }
              },
            ),
          ],
        ));
  }
}
