import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:onfoot/global_store/state.dart';

class ActivityState implements GlobalBaseState<ActivityState> {

  @override
  ActivityState clone() {
    return ActivityState()
      ..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

ActivityState initState(Map<String, dynamic> args) {
  return ActivityState();
}
