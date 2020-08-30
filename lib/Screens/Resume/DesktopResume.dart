import 'package:Portfolio/Topbar.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF313c4e),
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        actions: <Widget>[Topbar()],
      ),
      body: Container(
        color: Color(0xFF232a34),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 200),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(
                      "https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/Gaurav's%20Resume.jpg"),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    height: 150,
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        html.window.open(
                            "https://drive.google.com/uc?export=download&id=1c2AB2cVBgNq79ms4uakiC3jWxKh1JMIb",
                            'new tab');
                      },
                      label: Text("Download"),
                      icon: FaIcon(
                        FontAwesomeIcons.cloudDownloadAlt,
                      ),
                      backgroundColor: Color(0xFF45727d),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
