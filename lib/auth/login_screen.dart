
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttercoredemo/core/app_bloc.dart';
import 'package:fluttercoredemo/core/bloc_provider.dart';
import 'package:fluttercoredemo/core/style.dart' as prefix0;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AppBloc appBloc;
  TextEditingController _inputPassController = TextEditingController();
  TextEditingController _inputUserController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    appBloc = BlocProvider.of(context);
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Color(0xff1c155b),
          body: SingleChildScrollView(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
              child: Container(
                width: MediaQuery.of(context).size.width,
//              color: prefix0.whiteColor,
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.only(
                  left: ScreenUtil().setWidth(128.9),
                  right: ScreenUtil().setWidth(127.9),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: ScreenUtil().setHeight(63.0),
                    ),
                    InkWell(
                      onTap: () {

                      },
                      child: ButtonTheme(
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffe5bf7c),
                                borderRadius:
                                BorderRadius.all(Radius.circular(20.w)),
                              ),
                              height: ScreenUtil().setHeight(140),
                              width: ScreenUtil().setWidth(823),
                              child: Center(
                                child: Text('Đăng nhập'.toUpperCase(),
                                    style: TextStyle(
                                      fontFamily: 'Roboto-Medium',
                                      fontSize: ScreenUtil().setSp(48.0),
                                      color: prefix0.whiteColor,
                                    )),
                              ))),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }

}
