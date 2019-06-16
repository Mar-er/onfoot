import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:onfoot/global_store/state.dart';

class MyState implements GlobalBaseState<MyState> {

  @override
  MyState clone() {
    return MyState();
  }

  @override
  Color themeColor;
}

MyState initState(Map<String, dynamic> args) {
  return MyState();
}
