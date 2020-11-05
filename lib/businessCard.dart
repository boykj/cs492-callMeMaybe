import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

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
            FlatButton(
                child: new Text('github.com/boykj'),
                onPressed: () => launch('https://google.com')),
          ],
        ),
      ),
    );
  }
}
