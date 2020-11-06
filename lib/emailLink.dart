import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailLink extends StatefulWidget {
  @override
  _EmailLinkState createState() => new _EmailLinkState();
}

class _EmailLinkState extends State<EmailLink> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: Text('github.com/boykj'),
        onPressed: () => launch('https://github.com/boykj'));
  }
}
