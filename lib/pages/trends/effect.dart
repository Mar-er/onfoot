import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/constants/constants.dart';

Effect<TrendsState> buildEffect() {
  print('trends begin');
  return combineEffects(<Object, Effect<TrendsState>>{
    TrendsAction.action: _onAction,
  });
}

void _onAction(Action action, Context<TrendsState> ctx) {
  print('=================== effect ${TabRoutePath.trends["name"]} =================');
  Navigator.of(ctx.context).pushNamed(TabRoutePath.trends["name"]);
}
