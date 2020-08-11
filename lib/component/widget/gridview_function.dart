import 'package:flutter/material.dart';
import 'package:fluttercoredemo/component/model/data_gridview_model.dart';

class GridViewFunction extends StatefulWidget {
  final List<DataGridViewModel> list;

  GridViewFunction({this.list});

  @override
  _GridViewFunctionState createState() => _GridViewFunctionState();
}

class _GridViewFunctionState extends State<GridViewFunction> {
  @override
  Widget build(BuildContext context) {
    return Container(
//      child: GridView.builder(
//        itemCount: widget.list.length,
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(3),
//        itemBuilder: (BuildContext context, int index) {
//          return new Card(
//            child: new GridTile(
//              footer: new Text(widget.list[index].id),
//              child: new Text(data[index].), //just for testing, will fill with image later
//            ),
//          );
//        },
//      ),
    );
  }
}
