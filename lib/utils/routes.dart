import 'package:flutter/material.dart';

class Router {
  static void pushNamed(BuildContext context, String routeName,
      {Map<String, dynamic> arguments}) {
    Navigator.of(context).pushNamed(routeName, arguments: arguments);
  }
}
