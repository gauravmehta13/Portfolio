import 'package:flutter/material.dart';

class Column2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      child: Row(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
            width: (MediaQuery.of(context).size.width - 100) * (4 / 14),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              elevation: 15,
              child: Row(
                children: <Widget>[
                  SizedBox(),
                  Text('Music Player Using Flutter')
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 100) * (5 / 14),
                    height:
                        (MediaQuery.of(context).size.height * 0.55) * (1 / 3),
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
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width - 100) * (5 / 14),
                    height:
                        (MediaQuery.of(context).size.height * 0.55) * (1 / 3),
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
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: (MediaQuery.of(context).size.width - 100) * (6 / 14),
                    height: ((MediaQuery.of(context).size.height * 0.55) *
                            (2 / 3)) -
                        20,
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
                            height: 250,
                            width: 200,
                          ),
                          Text('Music Player Using Flutter')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width - 100) * (4 / 14),
                    height: ((MediaQuery.of(context).size.height * 0.55) *
                            (2 / 3)) -
                        20,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: (MediaQuery.of(context).size.width - 100) *
                              (6 / 14),
                          height:
                              (((MediaQuery.of(context).size.height * 0.55) *
                                          (2 / 3)) -
                                      40) /
                                  2,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            elevation: 15,
                            child: Row(
                              children: <Widget>[
                                Text('Music Player Using Flutter')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 100) *
                              (6 / 14),
                          height:
                              (((MediaQuery.of(context).size.height * 0.55) *
                                          (2 / 3)) -
                                      40) /
                                  2,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            elevation: 15,
                            child: Row(
                              children: <Widget>[
                                Text('Music Player Using Flutter')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
