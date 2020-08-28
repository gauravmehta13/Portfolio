import 'package:Portfolio/Screens/Blog/Column1.dart';
import 'package:flutter/material.dart';

import 'Column2.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Column1(),
            SizedBox(
              height: 20,
            ),
            Column2()
          ],
        ),
      ),
    );
  }
}
