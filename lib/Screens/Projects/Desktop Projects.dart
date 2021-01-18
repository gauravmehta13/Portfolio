import 'package:MyPortfolio/Topbar.dart';
import 'package:flutter/material.dart';

class DesktopProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Topbar(),
            Row(
              children: [
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Applications');
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2,
                    color: const Color(0xff141414),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            'Applications',
                            style: TextStyle(color: Colors.white, fontSize: 35),
                          ),
                        ),
                        Text(
                          'Proj',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 160,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 5),
                        )
                      ],
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ects',
                          style: TextStyle(
                              color: const Color(0xff141414),
                              fontSize: 160,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 5),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            'Websites',
                            style: TextStyle(
                                color: const Color(0xff141414), fontSize: 35),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
