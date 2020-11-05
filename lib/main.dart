/// Flutter code sample for TabController

// This example shows how to listen to page updates in [TabBar] and [TabBarView]
// when using [DefaultTabController].\
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'defaultLayout.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
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
