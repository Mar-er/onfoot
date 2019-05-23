import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/constant/routes.dart';

Effect<MessageState> buildEffect() {
  return combineEffects(<Object, Effect<MessageState>>{
    MessageAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MessageState> ctx) {
  print('=================== effect ${TabRoutePath.message["name"]} =================');
  Navigator.of(ctx.context).pushNamed(TabRoutePath.message["name"]);
}
