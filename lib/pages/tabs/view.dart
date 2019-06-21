import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'package:onfoot/constants/constants.dart';

Widget buildView(TabsState state, Dispatch dispatch, ViewService viewService) {
  List<Widget> tabs = List();

  TabRoute.route.asMap().forEach((int index, Map route) {
    tabs.add(barItem(route['icon'], route['name']));
  });

  return Scaffold(
    backgroundColor: Colors.white,
//    appBar: new AppBar(
//      bottom: TabBar(
//        tabs: tabs,
//        controller: state.tabController,
//      ),
//    ),
    body: TabBarView(
      children: state.pages,
      controller: state.tabController,
    ),
    bottomNavigationBar: Material(
      child: TabBar(
        tabs: tabs,
        controller: state.tabController,
        indicatorWeight: 0.1, // 指示器高度
      ),
    ),
  );
}

Widget barItem(font, text) {
  return Tab(
    icon: Icon(
      font,
      color: Colors.blueAccent,
    ),
    child: Text(
      text,
      style: TextStyle(color: Colors.blueAccent),
    ),
//      child: Icon(IconData(font))
  );
}
