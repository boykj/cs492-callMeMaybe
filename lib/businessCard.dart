//import 'dart:html';

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
    final String email = 'boykj@oregonstateu.edu';
    final String github = 'github.com/boykj';
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            paddedImage(),
            Text('Jacob Boyk', style: TextStyle(fontSize: 14, height: 2)),
            Text('Student', style: TextStyle(fontSize: 14, height: 2)),
            InkWell(child: Text(phone), onTap: () => launch("sms:'$phone")),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              FlatButton(
                  child: Text(github),
                  onPressed: () => launch('https://$github')),
              FlatButton(
                  child: Text(email), onPressed: () => launch("mailto:$email"))
            ]),
          ],
        ),
      ),
    );
  }
}

Widget paddedImage() {
  return Padding(
      padding: EdgeInsets.all(20),
      child: SizedBox(
          child: Image.asset('assets/260546.jpg'), width: 100, height: 100));
}
