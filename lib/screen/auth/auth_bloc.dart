import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercoredemo/component/model/data_gridview_model.dart';
import 'package:fluttercoredemo/core/core_stream.dart';

class AuthBloc {
  List<DataGridViewModel> listDataGridViewModel = List<DataGridViewModel>();

  CoreStream<AuthenticationModel> authStream = CoreStream();

  void getDataInit() {
    listDataGridViewModel.add(DataGridViewModel.create(
        id: "1", content: "Vị trí ATM/Chi nhánh", icon: Icons.atm));
    listDataGridViewModel.add(DataGridViewModel.create(
        id: "1", content: "Tỷ giá", icon: Icons.monetization_on));
    listDataGridViewModel.add(DataGridViewModel.create(
        id: "1", content: "Lãi xuất", icon: Icons.attach_money));
    listDataGridViewModel.add(DataGridViewModel.create(
        id: "1", content: "Thông tin hỗ trợ", icon: Icons.info_outline));
    listDataGridViewModel.add(DataGridViewModel.create(
        id: "1", content: "Hòm thư", icon: Icons.message));
    listDataGridViewModel.add(DataGridViewModel.create(
        id: "1", content: "Liên hệ", icon: Icons.perm_contact_calendar));
    print(listDataGridViewModel);
  }
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
