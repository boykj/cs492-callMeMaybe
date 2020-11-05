import 'package:flutter/material.dart';

import 'defaultLayout.dart';

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.blueGrey,
            textTheme: TextTheme(
                headline5: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial'),
                headline6: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, height: 3))),
        home: DefaultLayout());
  }
}
