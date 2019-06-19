import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/pages/activity/page.dart';
import 'package:onfoot/pages/trends/page.dart';
import 'package:onfoot/pages/itinerary/page.dart';
import 'package:onfoot/pages/message/page.dart';
import 'package:onfoot/pages/my/page.dart';

Effect<TabsState> buildEffect() {
  return combineEffects(<Object, Effect<TabsState>>{
    Lifecycle.initState: _init,
  });
}

void _init(Action action, Context<TabsState> ctx) {
  final TickerProvider tickerProvider = ctx.stfState as TabsPageStateKeepAliveStf;
  TabController tabController = TabController(length: ctx.state.pages.length, vsync: tickerProvider);
  ctx.dispatch(TabsActionCreator.init(TabsState()..tabController = tabController));
}