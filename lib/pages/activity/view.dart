import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/constants/constants.dart';
import 'package:onfoot/utils/utils.dart';

Widget buildView(ActivityState state, Dispatch dispatch, ViewService viewService) {
  print(TabRoutePath.activity["name"]);
  return Container(
    color: state.themeColor,
    child: Column(
      children: [
        Text('current page ${TabRoutePath.activity["name"]}'),
        RaisedButton(
            padding: const EdgeInsets.only(
                left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
            color: Colors.blue,
            child: const Text('Change theme',
                style: TextStyle(fontSize: 18),
                overflow: TextOverflow.ellipsis),
            onPressed: () {
              dispatch(ActivityActionCreator.onChangeTheme());
            }),
        FlatButton(
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoutePath.activity["name"], arguments: {"a": 1, "b": 2}),
          child: Text('go to ${TabRoutePath.activity["name"]}'),
          color: Colors.blue,
        ),
         FlatButton(
           onPressed: () => Router.pushNamed(viewService.context, TabRoutePath.trends["name"]),
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
    ),
  );
}
