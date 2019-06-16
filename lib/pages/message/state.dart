import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';

import 'package:onfoot/global_store/state.dart';

class MessageState implements GlobalBaseState<MessageState> {

  @override
  MessageState clone() {
    return MessageState();
  }

  @override
  Color themeColor;
}

MessageState initState(Map<String, dynamic> args) {
  return MessageState();
}
