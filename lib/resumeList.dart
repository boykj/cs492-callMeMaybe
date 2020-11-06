import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'githubLink.dart';
import 'emailLink.dart';

class ResumeList extends StatefulWidget {
  @override
  _ResumeListState createState() => _ResumeListState();
}

final headerTitle = 'Mazama Media - Developer';
final headerDetails = 'Something something developer at a marketing company';
final headerExperience = '1 Year(s)';

List resumeListing = [
  paddedTextBlock(headerTitle, headerDetails, headerExperience),
  paddedTextBlock(headerTitle, headerDetails, headerExperience)
];

class _ResumeListState extends State<ResumeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        titleBlock(context),
        paddedTextBlock(headerTitle, headerDetails, headerExperience),
        paddedTextBlock(headerTitle, headerDetails, headerExperience),
        paddedTextBlock(headerTitle, headerDetails, headerExperience),
        paddedTextBlock(headerTitle, headerDetails, headerExperience),
        paddedTextBlock(headerTitle, headerDetails, headerExperience),
        paddedTextBlock(headerTitle, headerDetails, headerExperience),
        paddedTextBlock(headerTitle, headerDetails, headerExperience),
        paddedTextBlock(headerTitle, headerDetails, headerExperience),
        paddedTextBlock(headerTitle, headerDetails, headerExperience)
      ]),
    ));
  }
}

Widget paddedTextBlock(title, details, experience) {
  return Padding(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Text(title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        Text(details, style: TextStyle(fontSize: 12)),
        Text(experience, style: TextStyle(fontSize: 12))
      ]));
}

Widget titleBlock(context) {
  return Padding(
      padding: EdgeInsets.all(3),
      child: Column(children: [
        Text('Jacob Boyk',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        InkWell(child: GithubLink()),
        InkWell(child: EmailLink())
      ]));
}
