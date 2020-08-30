import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Text('Welcome  To  My  Portfolio'),
          ),
          Spacer(),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram),
              onPressed: () {
                html.window
                    .open('https://www.instagram.com/0kthnxbye/', 'new tab');
              }),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.github),
              onPressed: () {
                html.window.open('https://github.com/gauravmehta13', 'new tab');
              }),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.linkedin),
              onPressed: () {
                html.window.open(
                    'https://www.linkedin.com/in/gauravmehta13/', 'new tab');
              })
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey[900],
      ),
      height: double.infinity,
      width: 60,
    );
  }
}
