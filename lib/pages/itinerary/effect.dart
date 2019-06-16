import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/constants/constants.dart';

Effect<ItineraryState> buildEffect() {
  return combineEffects(<Object, Effect<ItineraryState>>{
    ItineraryAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ItineraryState> ctx) {
  print('=================== effect ${TabRoutePath.itinerary["name"]} =================');
  Navigator.of(ctx.context).pushNamed(TabRoutePath.itinerary["name"]);
}
