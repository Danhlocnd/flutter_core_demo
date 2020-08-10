import 'package:flutter/material.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    Future.delayed(Duration(seconds: 2), () {
//      appBloc.authBloc.checkAuthentication(context);
//    });
    appBloc = BlocProvider.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(bottom: 200.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Splash", style:
                    TextStyle(
                      fontSize: 30.sp,
                      color: Colors.white
                    ),
                  )
//                  Image.asset('asset/images/logo.png',
//                      width: MediaQuery.of(context).size.width),
                ],
              )),
          Positioned(
              bottom: 100.h,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text('From Kosaxumi Group️',
                          style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 50.sp,
                              color: Colors.white,
                              letterSpacing: 2)),
                    )
                  ],
                ),
              ))
        ],
      ),
      backgroundColor: Color(0xff1c155b),
    );
  }
}
