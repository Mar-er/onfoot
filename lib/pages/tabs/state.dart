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

class TabsPageStateKeepAliveStf extends ComponentState<TabsState>
    with SingleTickerProviderStateMixin {
//  @override
//  bool get wantKeepAlive => true;
}

class TabsState implements GlobalBaseState<TabsState> {
  TabController tabController;
  // tab page
  List<Widget> pages = [];

  @override
  TabsState clone() {
    return TabsState()
      ..tabController = tabController
      ..pages = pages;
  }

  @override
  Color themeColor;
}

TabsState initState(Map<String, dynamic> args) {
  TabsState state = TabsState();
//  state.titles = TabRoute.route.map((v) => v["path"]);
  state.pages
    ..add(ActivityPage().buildPage(null))
    ..add(TrendsPage().buildPage(null))
    ..add(ItineraryPage().buildPage(null))
    ..add(MessagePage().buildPage(null))
    ..add(MyPage().buildPage(null));
  return state;
}
