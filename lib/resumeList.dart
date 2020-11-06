import 'package:flutter/material.dart';
import 'githubLink.dart';
import 'emailLink.dart';

class ResumeList extends StatefulWidget {
  @override
  _ResumeListState createState() => _ResumeListState();
}

final headerTitle = 'Developer';
final headerDetails = 'Mazama Media';
final experienceTime = '2019 - Present';
final location = 'Bend, OR';
final headerExperience =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum';
final resumeVariable = 8;

class _ResumeListState extends State<ResumeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        titleBlock(),
        paddedTextBlock(),
        paddedTextBlock(),
        paddedTextBlock(),
        paddedTextBlock(),
        paddedTextBlock(),
        paddedTextBlock(),
        paddedTextBlock(),
        paddedTextBlock()
      ]),
    ));
  }
}

Widget paddedTextBlock() {
  return Padding(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          Text(headerTitle,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
        ]),
        Wrap(
            alignment: WrapAlignment.end,
            spacing: 50.0,
            runSpacing: 30.0,
            children: [
              Text(headerDetails, style: TextStyle(fontSize: 12)),
              Text(experienceTime, style: TextStyle(fontSize: 12)),
              Text(location, style: TextStyle(fontSize: 12))
            ]),
        Wrap(children: [
          Text(headerExperience, style: TextStyle(fontSize: 10)),
        ])
      ]));
}

Widget titleBlock() {
  return Padding(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Row(children: [
          Text('Jacob Boyk',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))
        ]),
        Row(children: [InkWell(child: EmailLink())]),
        Row(children: [InkWell(child: GithubLink())])
      ]));
}
