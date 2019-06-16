import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/constants/constants.dart';

Effect<MyState> buildEffect() {
  return combineEffects(<Object, Effect<MyState>>{
    MyAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MyState> ctx) {
  print('=================== effect ${TabRoutePath.my["name"]} =================');
  Navigator.of(ctx.context).pushNamed(TabRoutePath.my["name"]);
}
