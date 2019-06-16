import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'package:onfoot/global_store/state.dart';
import 'package:onfoot/constants/constants.dart';
import 'package:onfoot/pages/activity/page.dart';
import 'package:onfoot/pages/trends/page.dart';
import 'package:onfoot/pages/itinerary/page.dart';
import 'package:onfoot/pages/message/page.dart';
import 'package:onfoot/pages/my/page.dart';

class HomeState implements GlobalBaseState<HomeState> {
  //tab title
//  List<String> titles = [];
  // tab page
  List<Widget> pages = [];
  // 当前选中tab
  int selectedIndex = 0;

  @override
  HomeState clone() {
    return HomeState()
    ..selectedIndex = selectedIndex;
  }

  @override
  Color themeColor;
}

HomeState initState(Map<String, dynamic> args) {
  HomeState state = HomeState();
//  state.titles = TabRoute.route.map((v) => v["name"]);
  state.pages..add(ActivityPage().buildPage(null))
    ..add(TrendsPage().buildPage(null))
    ..add(ItineraryPage().buildPage(null))
    ..add(MessagePage().buildPage(null))
    ..add(MyPage().buildPage(null));
  return state;
}
