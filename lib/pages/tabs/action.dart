import 'package:fish_redux/fish_redux.dart';
import 'state.dart';

//TODO replace with your own action
enum TabsAction { init }

class TabsActionCreator {
  static Action init(TabsState data) {
    return Action(TabsAction.init, payload: data);
  }
}
