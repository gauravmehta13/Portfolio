import 'package:flutter/material.dart';

class Column1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              elevation: 15,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  Text('Music Player Using Flutter')
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            elevation: 15,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 200,
                ),
                Text('Music Player Using Flutter')
              ],
            ),
          ),
        )
      ],
    );
  }
}
