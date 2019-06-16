import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/constants/constants.dart';
import 'package:onfoot/global_store/store.dart';
import 'package:onfoot/global_store/action.dart';

Effect<ActivityState> buildEffect() {
  return combineEffects(<Object, Effect<ActivityState>>{
    ActivityAction.action: _onAction,
    ActivityAction.onChangeTheme: _onChangeTheme,
  });
}

void _onAction(Action action, Context<ActivityState> ctx) {
}

void _onChangeTheme(Action action, Context<ActivityState> ctx) {
  //change global data
  GlobalStore.store.dispatch(GlobalActionCreator.onchangeThemeColor());
}