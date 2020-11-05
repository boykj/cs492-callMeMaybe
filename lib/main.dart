/// Flutter code sample for TabController

// This example shows how to listen to page updates in [TabBar] and [TabBarView]
// when using [DefaultTabController].\
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'RandomResponseGenerator.dart';
import 'businessCard.dart';

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

//final List<Tab> tabs = <Tab>[
//  Tab(text: 'Zeroth'),
//  Tab(text: 'First'),
//  Tab(text: 'Second'),
//];
//
//final List<Tab> tabIcons = <Tab>[
//  Tab(icon: Icon(Icons.local_atm)),
//  Tab(icon: Icon(Icons.contact_page)),
//  Tab(icon: Icon(Icons.help))
//];

/// This is the stateless widget that the main application instantiates.
class DefaultLayout extends StatelessWidget {
  DefaultLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            title: Text('Hello worlds', textAlign: TextAlign.center),
            bottom: TabBar(
              indicatorColor: Colors.black,
              tabs: [
                Tab(icon: Icon(Icons.local_atm)),
                Tab(icon: Icon(Icons.contact_page)),
                Tab(icon: Icon(Icons.help))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              BusinessCard(),
              Text('Tab 2'),
              RandomResponseGenerator()
            ],
          ),
        );
      }),
    );
  }
}
