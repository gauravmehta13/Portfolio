import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zoom_widget/zoom_widget.dart';

class MobileResume extends StatelessWidget {
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
      body: Zoom(
          onPositionUpdate: (Offset position) {
            print(position);
          },
          onScaleUpdate: (double scale, double zoom) {
            print("$scale  $zoom");
          },
          width: 2000,
          opacityScrollBars: 0.2,
          scrollWeight: 10.0,
          centerOnScale: true,
          enableScroll: true,
          doubleTapZoom: true,
          zoomSensibility: 2.3,
          initZoom: 0.0,
          height: 2800,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
                "https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/Gaurav's%20Resume.jpg"),
          )),
    );
  }
}
