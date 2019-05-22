import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ActivityAction { action }

class ActivityActionCreator {
  static Action onAction() {
    return const Action(ActivityAction.action);
  }
}
