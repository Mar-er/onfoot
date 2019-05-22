import 'package:fish_redux/fish_redux.dart';

class ItineraryState implements Cloneable<ItineraryState> {

  @override
  ItineraryState clone() {
    return ItineraryState();
  }
}

ItineraryState initState(Map<String, dynamic> args) {
  return ItineraryState();
}
