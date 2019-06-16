import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:onfoot/global_store/state.dart';

class ItineraryState implements GlobalBaseState<ItineraryState> {

  @override
  ItineraryState clone() {
    return ItineraryState();
  }

  @override
  Color themeColor;
}

ItineraryState initState(Map<String, dynamic> args) {
  return ItineraryState();
}
