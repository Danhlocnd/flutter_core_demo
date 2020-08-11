import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttercoredemo/auth/auth_bloc.dart';
import 'package:fluttercoredemo/component/widget/drawer_screen_login.dart';
import 'package:fluttercoredemo/core/app_bloc.dart';
import 'package:fluttercoredemo/core/bloc_provider.dart';
import 'package:fluttercoredemo/core/size_render.dart';
import 'package:fluttercoredemo/core/style.dart' as prefix0;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AppBloc appBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    appBloc = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerScreen(),
      body: Container(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: accountAndPassword(),
          ),
          Expanded(
            child: fastFunction(),
          )
        ],
      )),
    );
  }

  Widget accountAndPassword() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage("asset/images/img_bg_login.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.only(right: 100.h, left: 100.h),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(top: 100.h),
              color: Colors.white.withOpacity(0.6),
              height: 100.h,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: Icon(
                        Icons.person,
                        color: Color(0xff0e46a1),
                      )),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: prefix0.greyColor,
                      textInputAction: TextInputAction.done,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      obscureText: false,
                      enabled: true,
                      style: TextStyle(
                          fontFamily: "Roboto-Regular",
                          fontSize: ScreenUtil().setSp(44.0),
                          color: prefix0.blackColor,
                          fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: "Tài Khoản",
                        hintStyle: TextStyle(
                            fontSize: ScreenUtil().setSp(40.0),
                            fontFamily: "Roboto-Regular",
                            color: prefix0.blackColor),
                        contentPadding: EdgeInsets.all(0),
                      ),
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 60.h, bottom: 60.h),
            color: Colors.white.withOpacity(0.6),
            height: 100.h,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Icon(
                      Icons.lock,
                      color: Color(0xff0e46a1),
                    )),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: prefix0.greyColor,
                    textInputAction: TextInputAction.done,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    obscureText: false,
                    enabled: true,
                    style: TextStyle(
                        fontFamily: "Roboto-Regular",
                        fontSize: ScreenUtil().setSp(44.0),
                        color: prefix0.blackColor,
                        fontWeight: FontWeight.normal),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Mật Khẩu",
                      hintStyle: TextStyle(
                          fontSize: ScreenUtil().setSp(40.0),
                          fontFamily: "Roboto-Regular",
                          color: prefix0.blackColor),
                      contentPadding: EdgeInsets.all(0),
                    ),
                  ),
                )
              ],
            ),
          ),
          FlatButton(
            disabledColor: Color(0xff60b3f7).withOpacity(0.4),
            onPressed: () {
              appBloc.authBloc.authStream
                  .notify(AuthenticationModel(AuthState.LOGIN_SUCCESS, null));
            },
            child: Container(
                width: 400.w,
                child: Center(
                  child: Text('Đăng nhập'.toUpperCase(),
                      style: TextStyle(color: Colors.white)),
                )),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Color(0xff60b3f7).withOpacity(0.6),
                    width: 1,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(10.w)),
          ),
          SizedBox(
            height: 60.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.share,
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 10.w,
                  right: 10.w,
                ),
                padding: EdgeInsets.only(
                  right: 10.w,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.white))),
                child: Text(
                  "Chia sẻ",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                "Quên mật khẩu",
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget fastFunction() {
    return Container(
      color: Color(0xff42a5f6),
    );
  }
}
