import 'package:callMeMaybe/businessCard.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final githubTitle = 'github.com/boyk';

class GithubLink extends StatelessWidget {
  const GithubLink({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: Text(githubTitle),
        onPressed: () => launch('https://$githubTitle'));
  }
}
