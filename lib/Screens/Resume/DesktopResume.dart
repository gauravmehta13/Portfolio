import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: FlatButton.icon(
            onPressed: () {
              html.window.open(
                  "https://drive.google.com/uc?export=download&id=1c2AB2cVBgNq79ms4uakiC3jWxKh1JMIb",
                  'new tab');
            },
            icon: FaIcon(
              FontAwesomeIcons.cloudDownloadAlt,
            ),
            label: Text('Download'),
          )),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          children: <Widget>[
            Image.network(
                "https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/Gaurav's%20Resume.jpg")
          ],
        ),
      ),
    );
  }
}
