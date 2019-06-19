import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TabsState> buildReducer() {
  return asReducer(
    <Object, Reducer<TabsState>>{
      TabsAction.init: _init,
    },
  );
}

TabsState _init(TabsState state, Action action) {
  final TabsState newState = state.clone();
  newState.tabController = action.payload.tabController;
  return newState;
}
