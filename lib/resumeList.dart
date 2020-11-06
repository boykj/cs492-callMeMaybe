import 'package:flutter/material.dart';

class ResumeList extends StatelessWidget {
  @override
  ResumeList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Hello'), Text('Sup dog')])
      ]),
    );
  }
}
