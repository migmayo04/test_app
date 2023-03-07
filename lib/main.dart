import 'package:flutter/material.dart';

import 'package:test_app/rout/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      debugShowCheckedModeBanner: false,
      title: 'mig_s_application2',

      initialRoute: AppRoutes.login,
      routes: AppRoutes.routes,

      // home: const MyHomePage(title: 'Flutter Demo Home Page 123 '),
    );
  }
}



