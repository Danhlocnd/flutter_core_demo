import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoredemo/core/app_bloc.dart';
import 'package:fluttercoredemo/core/bloc_provider.dart';

class DrawerScreen extends StatefulWidget {
  DrawerScreen({Key key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  AppBloc appBloc;
  String name;
  String email;

  @override
  Widget build(BuildContext context) {
    appBloc = BlocProvider.of(context);
    return Container(
        width: 720.w,
        child: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 138.h),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 50.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      "abc",
                                      style: TextStyle(
                                        color: Color(0xff263238),
                                        height: 1.28,
                                        fontFamily: 'Roboto-Bold',
                                        fontSize: 60.0.sp,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 66.h,
                            child: Text(
                              "abcd",
                              style: new TextStyle(
                                  fontFamily: 'Roboto-Regular',
                                  color: Color(0xff959ca7),
                                  fontSize: 50.0.sp),
                            ),
                          ),
                          SizedBox(height: 40.h),
                          Container(
                            height: 1.h,
                            width: MediaQuery.of(context).size.width,
                            color: Color(0xffe18c12),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ));
  }

  buildItemMenu(
      {String title, String assetImg, @required VoidCallback onClickItem}) {
    return InkWell(
        onTap: () {
          onClickItem();
        },
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(width: 59.w),
                Image.asset("asset/images/" + assetImg,
                    width: 70.0.w, color: Color(0xff263238)),
                SizedBox(width: 46.7.w),
                Text(title,
                    style: new TextStyle(
                        fontFamily: 'Roboto-Regular',
                        color: Color(0xff263238),
                        fontSize: 50.0.sp,
                        height: 1.36))
              ],
            ),
            SizedBox(height: 56.0.h)
          ],
        ));
  }
}
