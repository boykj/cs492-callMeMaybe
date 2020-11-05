import 'package:callMeMaybe/randomResponseGenerator.dart';
import 'package:flutter/material.dart';

import 'businessCard.dart';
import 'randomResponseGenerator.dart';

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