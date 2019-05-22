import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TrendsState> buildReducer() {
  return asReducer(
    <Object, Reducer<TrendsState>>{
      TrendsAction.action: _onAction,
    },
  );
}

TrendsState _onAction(TrendsState state, Action action) {
  final TrendsState newState = state.clone();
  return newState;
}
