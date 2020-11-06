import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubLink extends StatefulWidget {
  @override
  _GithubLinkState createState() => new _GithubLinkState();
}

class _GithubLinkState extends State<GithubLink> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: Text('github.com/boykj'),
        onPressed: () => launch('https://github.com/boykj'));
  }
}
