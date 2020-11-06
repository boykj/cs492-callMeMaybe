import 'package:callMeMaybe/businessCard.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final github = 'github.com/boykj';

class GithubLink extends StatelessWidget {
  const GithubLink({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(child: Text(github), onTap: () => launch('https://$github'));
  }
}
