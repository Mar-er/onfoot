import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'package:onfoot/constants/constants.dart';

Widget buildView(TrendsState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Column(
      children: <Widget>[
        Text('current page trends'),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoutePath.activity["name"], arguments: {"a": 1, "b": 2}),
          child: Text('go to ${TabRoutePath.activity["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoutePath.trends["name"]),
          child: Text('go to ${TabRoutePath.trends["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoutePath.itinerary["name"]),
          child: Text('go to ${TabRoutePath.itinerary["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoutePath.message["name"]),
          child: Text('go to ${TabRoutePath.message["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoutePath.my["name"]),
          child: Text('go to ${TabRoutePath.my["name"]}'),
          color: Colors.blue,
        ),
      ],
    )
  );
}
