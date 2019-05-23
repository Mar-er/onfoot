import 'package:flutter/material.dart';

import 'package:fish_redux/fish_redux.dart';

import 'package:onfoot/pages/activity/page.dart';
import 'package:onfoot/pages/trends/page.dart';
import 'package:onfoot/pages/itinerary/page.dart';
import 'package:onfoot/pages/message/page.dart';
import 'package:onfoot/pages/my/page.dart';

import 'constant/routes.dart';

Widget createApp() {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        TabRoutePath.activity["name"]: ActivityPage(),
        TabRoutePath.trends["name"]: TrendsPage(),
        TabRoutePath.itinerary["name"]: ItineraryPage(),
        TabRoutePath.message["name"]: MessagePage(),
        TabRoutePath.my["name"]: MyPage(),
      },
    ),
  ]);
  return MaterialApp(
    title: 'title',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage(TabRoutePath.activity["name"], null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute(builder: (BuildContext context) {
        print('======= settings =======');
        print(settings);
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
