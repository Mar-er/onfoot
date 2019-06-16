import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'package:onfoot/constants/constants.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  List<Widget> pages = List();
  List<Widget> tabs = List();

  state.pages.asMap().forEach((int index, Widget page) {
    pages.add(
      Offstage(offstage: state.selectedIndex != index, child: page),
    );
  });

  TabRoute.route.asMap().forEach((int index, Map route) {
    tabs.add(barItem(route['icon']));
  });

  return WillPopScope(
    child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: pages,
      ),
      bottomNavigationBar: tabs,
    ),
  );
}

Widget barItem(font) {
  return Container(
      child: Icon(font)
//      child: Icon(IconData(font))
  );
}