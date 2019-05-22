import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ItineraryState> buildEffect() {
  return combineEffects(<Object, Effect<ItineraryState>>{
    ItineraryAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ItineraryState> ctx) {
}
