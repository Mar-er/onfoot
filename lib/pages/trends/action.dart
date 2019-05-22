import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TrendsAction { action }

class TrendsActionCreator {
  static Action onAction() {
    return const Action(TrendsAction.action);
  }
}
