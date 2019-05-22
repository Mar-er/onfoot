import 'package:fish_redux/fish_redux.dart';

class TrendsState implements Cloneable<TrendsState> {

  @override
  TrendsState clone() {
    return TrendsState();
  }
}

TrendsState initState(Map<String, dynamic> args) {
  return TrendsState();
}
