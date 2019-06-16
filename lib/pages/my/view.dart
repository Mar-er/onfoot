import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'package:onfoot/constants/constants.dart';

Widget buildView(MyState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Column(
      children: <Widget>[
        Text('current page my'),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[0]["name"], arguments: {"a": 1, "b": 2}),
          child: Text('go to ${TabRoute.route[0]["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[1]["name"]),
          child: Text('go to ${TabRoute.route[1]["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[2]["name"]),
          child: Text('go to ${TabRoute.route[2]["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[3]["name"]),
          child: Text('go to ${TabRoute.route[3]["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[4]["name"]),
          child: Text('go to ${TabRoute.route[4]["name"]}'),
          color: Colors.blue,
        ),
      ],
    )
  );
}
