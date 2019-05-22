import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ItineraryAction { action }

class ItineraryActionCreator {
  static Action onAction() {
    return const Action(ItineraryAction.action);
  }
}
