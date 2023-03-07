//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:test_app/login2.dart';

class AppRoutes {
  static const String login = '/login';

  static Map<String, WidgetBuilder> routes = {
    login:(context) =>LoginPage()
  };
}