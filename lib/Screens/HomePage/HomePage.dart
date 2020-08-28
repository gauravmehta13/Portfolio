import 'package:Portfolio/Screens/HomePage/SideBar.dart';
import 'package:Portfolio/Screens/Projects.dart';
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
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
          color: Colors.black, //Color(0xFF141414),
          /* image: DecorationImage(
              image: NetworkImage(
                  "https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/PicsArt_08-28-07.33.52.jpg"),
              fit: BoxFit.fitHeight,
            )*/
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
                        "https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/PicsArt_08-28-08.19.59.jpg",
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
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        /*Text('Coming Soon',
                            style: TextStyle(fontWeight: FontWeight.w600)),*/
                        Spacer(),
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Resume');
                          },
                          child: Text(
                            'Resume',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Blog');
                          },
                          child: Text(
                            'Blog',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/Projects');
                          },
                          child: Text(
                            'Projects',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/ContactMe');
                          },
                          child: Text(
                            'Contact Me',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
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
