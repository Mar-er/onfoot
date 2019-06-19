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
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[0]["path"], arguments: {"a": 1, "b": 2}),
          child: Text('go to ${TabRoute.route[0]["path"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[1]["path"]),
          child: Text('go to ${TabRoute.route[1]["path"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[2]["path"]),
          child: Text('go to ${TabRoute.route[2]["path"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[3]["path"]),
          child: Text('go to ${TabRoute.route[3]["path"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[4]["path"]),
          child: Text('go to ${TabRoute.route[4]["path"]}'),
          color: Colors.blue,
        ),
      ],
    )
  );
}
