import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print("Pressed");
              }),
          SizedBox(
            height: 20,
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Text('Welcome To My Website'),
          ),
          Spacer(),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram),
              onPressed: () {
                print("Pressed");
              }),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.medium),
              onPressed: () {
                print("Pressed");
              }),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.github),
              onPressed: () {
                print("Pressed");
              }),
          IconButton(
              icon: FaIcon(FontAwesomeIcons.linkedin),
              onPressed: () {
                print("Pressed");
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
