import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TabsPage extends Page<TabsState, Map<String, dynamic>> {
  @override
  TabsPageStateKeepAliveStf createState() => TabsPageStateKeepAliveStf();

  TabsPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<TabsState>(
              adapter: null, slots: <String, Dependent<TabsState>>{}),
          middleware: <Middleware<TabsState>>[],
        );
}
