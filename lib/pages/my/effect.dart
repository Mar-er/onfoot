import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/constant/routes.dart';

Effect<MyState> buildEffect() {
  return combineEffects(<Object, Effect<MyState>>{
    MyAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MyState> ctx) {
  print('=================== effect ${TabRoutePath.trends["name"]} =================');
  Navigator.of(ctx.context).pushNamed(TabRoutePath.trends["name"]);
}
