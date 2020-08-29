import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import '../../TopBar.dart';

class DesktopContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFF060606),
              Color(0xFF2f2f2f),
              Color(0xFF7a7a7a),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          )),
          child: Column(
            children: <Widget>[
              Topbar(),
              Row(
                children: <Widget>[
                  Container(
                    //color: Colors.red,
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height - 50,
                  ),
                  Container(
                    //color: Colors.blue,
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height - 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Contact Me',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.w400),
                            )),
                        SizedBox(
                          height: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 70),
                          child: Text(
                              'I am available on almost every social media. You can message me, I will reply within 24 hours. I can help you with ML, AI, DevOps, Flutter, Cloud and Opensource Development.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Color(0xFFDD2a7b),
                              ),
                              onPressed: () {
                                html.window.open(
                                    'https://github.com/gauravmehta13',
                                    'new tab');
                              },
                            ),
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Color(0xFF00acee),
                              ),
                              onPressed: () {
                                html.window.open(
                                    'https://twitter.com/gauravmehta_',
                                    'new tab');
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.mail_outline,
                              ),
                              color: Color(0xFFD44638),
                              onPressed: () {
                                html.window.open(
                                    'mailto:gauravmehta@outlook.in', 'new tab');
                              },
                            ),
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                html.window.open(
                                    'https://wa.me/+917073142922', 'new tab');
                              },
                            ),
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.linkedin,
                                color: Color(0xFF0072b1),
                              ),
                              onPressed: () {
                                html.window.open(
                                    'https://www.linkedin.com/in/gauravmehta13/',
                                    'new tab');
                              },
                            ),
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                color: Colors.white60,
                              ),
                              onPressed: () {
                                html.window.open(
                                    'https://github.com/gauravmehta13',
                                    'new tab');
                              },
                            ),
                            /* ClipOval(
                              child: Material(
                                color: Colors.blue, // button color
                                child: InkWell(
                                  splashColor: Colors.red, // inkwell color
                                  child: SizedBox(
                                      width: 56,
                                      height: 56,
                                      child: Icon(Icons.menu)),
                                  onTap: () {},
                                ),
                              ),
                            ),*/
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.telegram,
                                color: Color(0xFF0088cc),
                              ),
                              onPressed: () {
                                html.window.open(
                                    'https://t.me/gauravmehta13', 'new tab');
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            //side: BorderSide(color: Colors.red)
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Resume');
                          },
                          color: Colors.blueGrey,
                          textColor: Colors.white,
                          child: Text("See My Resume",
                              style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: MediaQuery.of(context).size.height - 50,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('Address',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w400),
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 70),
                            child: Text(
                                'Gaurav Yadav,Village-heengwahera,Tijara, Dist.-Alwar\n Rajasthan - 301411',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Colors.white24,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Text('Phone Number',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w400),
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          Text('+91 703142922',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white24,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              //side: BorderSide(color: Colors.red)
                            ),
                            onPressed: () {
                              html.window.open(
                                  "https://www.google.com/maps/place/27%C2%B057'11.3%22N+76%C2%B048'17.7%22E/@27.9532014,76.8045423,18.65z/data=!4m9!1m3!11m2!2s1_az6ln5H0aywMFsHUqetpofZFwM!3e1!3m4!1s0x0:0x0!8m2!3d27.9531246!4d76.8049123",
                                  'new tab');
                            },
                            color: Colors.blueGrey,
                            textColor: Colors.white,
                            child: Text("Visit on Google Maps",
                                style: TextStyle(fontSize: 14)),
                          ),
                        ])),
                Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height - 50,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
