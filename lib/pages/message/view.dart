import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

import 'package:onfoot/pages/trends/action.dart';
import 'package:onfoot/pages/itinerary/action.dart';
import 'package:onfoot/pages/activity/action.dart';
import 'package:onfoot/pages/my/action.dart';

Widget buildView(MessageState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Column(
      children: [
        Text('current page message'),
        FlatButton(
          onPressed: () => dispatch(ActivityActionCreator.onAction()),
          child: Text('go to trends'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => dispatch(TrendsActionCreator.onAction()),
          child: Text('go to itinerary'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => dispatch(ItineraryActionCreator.onAction()),
          child: Text('go to message'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => dispatch(MessageActionCreator.onAction()),
          child: Text('go to my'),
          color: Colors.blue,
        ),
        FlatButton(
          onPressed: () => dispatch(MyActionCreator.onAction()),
          child: Text('go to activity'),
          color: Colors.blue,
        )
      ],
    ),
  );
}
