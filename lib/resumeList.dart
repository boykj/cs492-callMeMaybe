import 'package:flutter/material.dart';

class ResumeList extends StatelessWidget {
  @override
  ResumeList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: <Widget>[
        Row(children: [
          Text('Hello there\t'),
          Text('General Kenobi'),
        ])
      ])),
    );
  }
}
