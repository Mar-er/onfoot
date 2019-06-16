import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/constants/constants.dart';

Effect<MessageState> buildEffect() {
  return combineEffects(<Object, Effect<MessageState>>{
    MessageAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MessageState> ctx) {
  Navigator.of(ctx.context).pushNamed(TabRoutePath.message["name"]);
}
