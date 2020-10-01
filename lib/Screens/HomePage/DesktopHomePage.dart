import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../TopBar.dart';
import 'SideBar.dart';

class DesktopHomePage extends StatefulWidget {
  @override
  _DesktopHomePageState createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  double topimg = 1;
  double toptext = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NotificationListener(
      onNotification: (v) {
        if (v is ScrollUpdateNotification) {
          //only if scroll update notification is triggered
          setState(() {
            toptext -= v.scrollDelta / 1;
            topimg -= v.scrollDelta / 1.5;
          });
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
          color: Colors.black, //Color(0xFF141414),
        ),
        child: Stack(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  top: topimg,
                  right: 0,
                  left: 0,
                  child: Image(
                    image: AssetImage('assets/HomeView.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  top: toptext,
                  left: 50,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text('Hello, I\u0027m\nGaurav Yadav',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 60,
                                    fontWeight: FontWeight.w400),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            'An Engineering Student and a tech enthusiast working \nto better understand the core concepts behind different \npopular Technologies like Artificial Intelligence,DevOps,\nCloud Computing etc.',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.grey[700],
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                ListView(
                  children: <Widget>[
                    Container(
                      height: 2700,
                      color: Colors.transparent,
                    )
                  ],
                )
              ],
            ),
            Topbar(),
            SideBar(),
          ],
        ),
      ),
    ));
  }
}
