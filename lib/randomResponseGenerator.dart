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
      var random = Random();
      answerText = (randomWords[random.nextInt(randomWords.length)]);
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
                  style: Theme.of(context).textTheme.headline6),
              RaisedButton(
                  child: Text('Click me for an answer'),
                  color: Colors.blue[200],
                  onPressed: () => {_echoWords()}),
              Text('$answerText', style: Theme.of(context).textTheme.headline6)
            ]),
      ),
    );
  }
}
