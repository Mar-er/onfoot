import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/constant/routes.dart';

//import '../activity/page.dart' as activity_page;

Effect<ActivityState> buildEffect() {
  return combineEffects(<Object, Effect<ActivityState>>{
    ActivityAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ActivityState> ctx) {
  print(
      '=================== effect ${TabRoutePath.activity["name"]} =================');
  Navigator.of(ctx.context)
      .pushNamed(TabRoutePath.activity["name"], arguments: {"a": 1, "b": 2});

//  Navigator.of(ctx.context).push(MaterialPageRoute(
//    builder: (BuildContext buildCtx) =>
//        activity_page.ActivityPage().buildPage(null),
//  ));
}
