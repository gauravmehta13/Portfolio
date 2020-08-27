import 'package:Portfolio/Screens/HomePage/SideBar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
        decoration: BoxDecoration(
            color: Colors.black, //Color(0xFF141414),
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.andrew-mason.com/wp-content/uploads/2013/05/Portrait-Photography-5.jpg"),
              fit: BoxFit.fitHeight,
            )),
        child: Stack(
          children: <Widget>[
            SideBar(),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    /*Text('Coming Soon',
                        style: TextStyle(fontWeight: FontWeight.w600)),*/
                    Spacer(),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Resume',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Blog',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Projects',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Contact Me',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )
              ],
            ),
            Positioned(
              top: 100,
              left: 160,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
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
                          color: Colors.white,
                          //fontSize: 60,
                          // fontWeight: FontWeight.w400),
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
      ),
    );
  }
}
