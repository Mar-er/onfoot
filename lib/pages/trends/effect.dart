import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<TrendsState> buildEffect() {
  return combineEffects(<Object, Effect<TrendsState>>{
    TrendsAction.action: _onAction,
  });
}

void _onAction(Action action, Context<TrendsState> ctx) {
}
