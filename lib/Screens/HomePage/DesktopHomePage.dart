import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../TopBar.dart';
import 'SideBar.dart';

class DesktopHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
          color: Colors.black, //Color(0xFF141414),
        ),
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image(
                      image: NetworkImage(
                        "https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/HomeView.jpg",
                      ),
                      fit: BoxFit.fitWidth,
                    )
                  ],
                ),
              ),
            ),
            SideBar(),
            Column(
              children: <Widget>[
                Column(
                  children: [
                    Topbar(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 15,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 80),
                        Container(
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
                              /* Text(
                          'Specific fields of interest include : Machine Learning          \nDeep Learning | Computer Vision | Jenkins | Docker \nKubernetes | Git & GitHub | AWS & OpenStack cloud \nTerraform | OpenShift | RedHat Linux etc.',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.white,
                                //fontSize: 60,
                                fontWeight: FontWeight.w200),
                          )),*/
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
