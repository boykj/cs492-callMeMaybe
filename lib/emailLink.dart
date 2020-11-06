import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final email = 'boykj@oregonstate.edu';

class EmailLink extends StatelessWidget {
  const EmailLink({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(child: Text(email), onTap: () => launch("mailto:$email"));
  }
}
