import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';

import 'package:onfoot/pages/home/page.dart';
import 'package:onfoot/pages/activity/page.dart';
import 'package:onfoot/pages/trends/page.dart';
import 'package:onfoot/pages/itinerary/page.dart';
import 'package:onfoot/pages/message/page.dart';
import 'package:onfoot/pages/my/page.dart';
import 'global_store/store.dart';
import 'global_store/state.dart';
import 'constants/constants.dart';

//create global page helper
Page<T, dynamic> pageConfiguration<T extends GlobalBaseState<T>>(
    Page<T, dynamic> page) {
  return page

  ///connect with app-store
    ..connectExtraStore(GlobalStore.store, (T pagestate, GlobalState appState) {
      return pagestate.themeColor == appState.themeColor
          ? pagestate
          : ((pagestate.clone())..themeColor = appState.themeColor);
    })

  ///updateMiddleware
    ..updateMiddleware(
      view: (List<ViewMiddleware<T>> viewMiddleware) {
        viewMiddleware.add(safetyView<T>());
      },
      adapter: (List<AdapterMiddleware<T>> adapterMiddleware) {
        adapterMiddleware.add(safetyAdapter<T>());
      },
    );
}

Widget createApp() {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'home': pageConfiguration(HomePage()),
        TabRoute.route[0]["name"]: pageConfiguration(ActivityPage()),
        TabRoute.route[1]["name"]: pageConfiguration(TrendsPage()),
        TabRoute.route[2]["name"]: pageConfiguration(ItineraryPage()),
        TabRoute.route[3]["name"]: pageConfiguration(MessagePage()),
        TabRoute.route[4]["name"]: pageConfiguration(MyPage()),
      },
    ),
  ]);
  print(routes);
  return MaterialApp(
    title: 'title',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('home', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
