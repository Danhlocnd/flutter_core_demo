import 'package:flutter/material.dart';
import 'package:fluttercoredemo/auth/auth_bloc.dart';
import 'package:fluttercoredemo/core/app_bloc.dart';
import 'package:fluttercoredemo/core/bloc_provider.dart';
import 'package:fluttercoredemo/core/size_extension.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  AppBloc appBloc;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    Future.delayed(Duration.zero,(){
      appBloc.authBloc.getDataInit();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      appBloc.authBloc.authStream.notify(AuthenticationModel(AuthState.LOGIN_FAILED, null));
    });
    appBloc = BlocProvider.of(context);
    return Scaffold(
        body: Center(
          child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Splash".toUpperCase(), style:
                  TextStyle(
                      fontSize: 150.sp,
                      color: Colors.white
                  ),
                  )
//                  Image.asset('asset/images/logo.png',
//                      width: MediaQuery.of(context).size.width),
                ],
              )),
        ),
        backgroundColor: Color(0xff1c155b),);
  }
}
