import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:onfoot/global_store/state.dart';

class TrendsState implements GlobalBaseState<TrendsState> {

  @override
  TrendsState clone() {
    return TrendsState();
  }

  @override
  Color themeColor;
}

TrendsState initState(Map<String, dynamic> args) {
  return TrendsState();
}
