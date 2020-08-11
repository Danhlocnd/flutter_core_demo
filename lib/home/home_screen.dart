import 'package:flutter/material.dart';
import 'package:fluttercoredemo/component/widget/drawer_screen_inapp.dart';
import 'package:fluttercoredemo/core/app_bloc.dart';
import 'package:fluttercoredemo/core/bloc_provider.dart';
import 'package:fluttercoredemo/home/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppBloc appBloc;

  @override
  Widget build(BuildContext context) {
    appBloc = BlocProvider.of(context);
    return Stack(
      children: [
        Scaffold(
            appBar: AppBar(),
            drawer: DrawerScreenInApp(),
            body: StreamBuilder(
              initialData:
                  HomeIndexStackModel(indexStack: appBloc.homeBloc.indexStack),
              stream: appBloc.homeBloc.homeIndexStackStream.stream,
              builder: (context, AsyncSnapshot<HomeIndexStackModel> snapshot) {
                int indexStack = (!snapshot.hasData || snapshot.data == null)
                    ? 0
                    : snapshot.data.indexStack;

                return IndexedStack(
                  index: indexStack,
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Text("Trang chủ"),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("Tài khoản"),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("Chuyển tiền"),
                      ),
                    ),
                  ],
                );
              },
            )),
        _buildLayoutNoAppBar()
      ],
    );
  }

  _buildLayoutNoAppBar() {
    return StreamBuilder(
        initialData: LayoutNoAppBarModel(state: LayoutNoAppBarState.NONE),
        stream: appBloc.homeBloc.layoutNoAppBarStream.stream,
        builder:
            (buildContext, AsyncSnapshot<LayoutNoAppBarModel> snapshotData) {
          switch (snapshotData.data.state) {
            case LayoutNoAppBarState.SCREENFULL1:
              return InkWell(
                onTap: () => appBloc.homeBloc.layoutNoAppBarStream.notify(
                    LayoutNoAppBarModel(state: LayoutNoAppBarState.NONE)),
                child: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text("Màn full 1"),
                  ),
                ),
              );
              break;
            default:
              return Container();
              break;
          }
        });
  }
}
