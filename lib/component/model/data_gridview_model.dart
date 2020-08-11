import 'package:flutter/material.dart';

class DataGridViewModel {
  String id;
  String content;
  IconData icon;

  DataGridViewModel();

  DataGridViewModel.create({this.id, this.content, this.icon});
}
