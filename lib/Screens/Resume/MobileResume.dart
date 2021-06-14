import 'package:flutter/material.dart';
import 'dart:html' as html;

class MobileResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('Resume'),
          backgroundColor: Color(0xFF313c4e),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.download_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                html.window.open(
                    "https://drive.google.com/uc?export=download&id=1wYBX4qraDFSAuoknE65m40R1Eg9MwU24",
                    'new tab');
              },
            )
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.network(
              "https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/Gaurav's%20Resume.jpg"),
        ));
  }
}
