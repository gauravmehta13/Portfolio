import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
          SizedBox(
            width: 60,
          ),
          Spacer(),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Resume');
            },
            child: Text(
              'Resume',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Blog');
            },
            child: Text(
              'Blog',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Projects');
            },
            child: Text(
              'Projects',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/ContactMe');
            },
            child: Text(
              'Contact Me',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ]));
  }
}
