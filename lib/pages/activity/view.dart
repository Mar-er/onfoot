import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/constants/constants.dart';
import 'package:onfoot/utils/utils.dart';

Widget buildView(ActivityState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: state.themeColor,
    child: Column(
      children: [
        Text('current page ${TabRoute.route[0]["path"]}'),
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
          onPressed: () => Navigator.of(viewService.context).pushNamed(TabRoute.route[0]["path"], arguments: {"a": 1, "b": 2}),
          child: Text('go to ${TabRoute.route[0]["path"]}'),
          color: Colors.blue,
        ),
         FlatButton(
           onPressed: () => Router.pushNamed(viewService.context, TabRoute.route[1]["path"]),
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
    ),
  );
}
