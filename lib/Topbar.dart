import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      }),
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
                ]),
          ],
        ));
  }
}
