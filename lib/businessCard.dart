//import 'dart:html';

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

class BusinessCard extends StatefulWidget {
  @override
  _BusinessCardState createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    final String phone = '541-604-6275';

    return Scaffold(
      body: Center(
        child: Column(
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
            InkWell(child: Text(phone), onTap: () => launch("sms:'$phone")),
            Row(children: [
              FlatButton(
                  child: Text('github.com/boykj'),
                  onPressed: () => launch('https://github.com/boykj')),
              FlatButton(
                  child: Text('boykj@oregonstate.edu'),
                  onPressed: () => launch('https://gmail.com'))
            ]),
          ],
        ),
      ),
    );
  }
}
