import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TrendsPage extends Page<TrendsState, Map<String, dynamic>> {
  TrendsPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<TrendsState>(
                adapter: null,
                slots: <String, Dependent<TrendsState>>{
                }),
            middleware: <Middleware<TrendsState>>[
            ],);

}
