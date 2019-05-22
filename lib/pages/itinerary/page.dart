import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ItineraryPage extends Page<ItineraryState, Map<String, dynamic>> {
  ItineraryPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ItineraryState>(
                adapter: null,
                slots: <String, Dependent<ItineraryState>>{
                }),
            middleware: <Middleware<ItineraryState>>[
            ],);

}
