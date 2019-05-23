import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TrendsAction { action }

class TrendsActionCreator {
  static Action onAction() {
    print('trends action');
    return const Action(TrendsAction.action);
  }
}
