/// Flutter code sample for TabController

// This example shows how to listen to page updates in [TabBar] and [TabBarView]
// when using [DefaultTabController].
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        home: MyStatelessWidget());
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
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

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

class BusinessCard extends StatefulWidget {
  @override
  _BusinessCardState createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image(
              width: 80,
              height: 80,
              image: NetworkImage(
                  'https://www.pm10inc.com/wp-content/themes/micron/images/placeholders/placeholder_small_dark.jpg'),
            ),
            Text('Jacob Boyk', style: TextStyle(fontSize: 14, height: 2)),
            Text('Student', style: TextStyle(fontSize: 14, height: 2)),
            Text('541-867-5309',
                style: TextStyle(
                    fontSize: 12, height: 2, fontWeight: FontWeight.bold)),
            Text('github.com/boykj        boykj@oregonstate.edu',
                style: TextStyle(fontSize: 9.5, height: 2)),
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(
      //  onPressed: _incrementCounter,
      //  tooltip: 'Increment',
      //  child: Icon(Icons.add),
      //), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RandomResponseGenerator extends StatefulWidget {
  @override
  _RandomResponseState createState() => _RandomResponseState();
}

class _RandomResponseState extends State<RandomResponseGenerator> {
  final List randomWords = [
    'Definitely',
    'Possibly',
    'Perhaps',
    'Unlikely',
    'Probably not',
    'Nah'
  ];

  void echoWords() {
    var random = new Random();
    print(random.nextInt(randomWords.length));
    print(randomWords[random.nextInt(randomWords.length)]);
    randomWords.forEach((words) {
      Text(words);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tap here for an answer',
                  style: Theme.of(context).textTheme.headline6),
              FlatButton(
                  child: Text('Call me Maybe?'),
                  color: Colors.blueAccent,
                  onPressed: echoWords),
              Text('$randomWords')
            ]),
      ),
    );
  }
}
