import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/pages/trends/action.dart';
import 'package:onfoot/pages/itinerary/action.dart';
import 'package:onfoot/pages/message/action.dart';
import 'package:onfoot/pages/my/action.dart';

import 'package:onfoot/constant/routes.dart';

Widget buildView(ActivityState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Column(
      children: [
        Text('current page ${TabRoutePath.activity["name"]}'),
        FlatButton(
          onPressed: () => dispatch(ActivityActionCreator.onAction()),
          child: Text('go to ${TabRoutePath.activity["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => dispatch(TrendsActionCreator.onAction()),
          child: Text('go to ${TabRoutePath.trends["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => dispatch(ItineraryActionCreator.onAction()),
          child: Text('go to ${TabRoutePath.itinerary["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => dispatch(MessageActionCreator.onAction()),
          child: Text('go to ${TabRoutePath.message["name"]}'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => dispatch(MyActionCreator.onAction()),
          child: Text('go to ${TabRoutePath.my["name"]}'),
          color: Colors.blue,
        ),
      ],
    ),
  );
}
