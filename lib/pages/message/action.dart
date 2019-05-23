import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MessageAction { action }

class MessageActionCreator {
  static Action onAction() {
    print('message action');
    return const Action(MessageAction.action);
  }
}
