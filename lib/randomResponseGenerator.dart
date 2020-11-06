import 'dart:math';

import 'package:flutter/material.dart';

class RandomResponseGenerator extends StatefulWidget {
  @override
  _RandomResponseState createState() => new _RandomResponseState();
}

class _RandomResponseState extends State<RandomResponseGenerator> {
  String answerText = 'Hello there';
  final List randomWords = [
    'Definitely',
    'Possibly',
    'Perhaps',
    'Unlikely',
    'Probably not',
    'Ehhh....'
  ];

  void _echoWords() {
    setState(() {
      final length = randomWords.length;
      var random = Random();
      answerText = (randomWords[random.nextInt(length)]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Call me, maybe?',
                  style: Theme.of(context).textTheme.headline5),
              InkWell(
                  child: Text('Click me for an answer'),
                  onTap: () => _echoWords()),
              Text('$answerText', style: Theme.of(context).textTheme.headline5)
            ]),
      ),
    );
  }
}
