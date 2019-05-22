import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ItineraryState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItineraryState>>{
      ItineraryAction.action: _onAction,
    },
  );
}

ItineraryState _onAction(ItineraryState state, Action action) {
  final ItineraryState newState = state.clone();
  return newState;
}
