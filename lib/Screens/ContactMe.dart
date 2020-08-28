import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF141414),
        elevation: 0,
        actions: <Widget>[
          /* IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          ),*/
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              /*image: DecorationImage(
                  image: NetworkImage(
                      'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/IMG_20200827_225429.jpg'),
                  fit: BoxFit.fitWidth)*/
              ),
          padding: EdgeInsets.fromLTRB(50, 20, 10, 0),
          //  color: Color(0xFF141414),
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height * 0.7,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Contact Me',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.w400),
                    )),
                SizedBox(
                  height: 15,
                ),
                Text(
                    'Do you speak Japnese? Its ok if you dont\nI speak English too.',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    )),
                SizedBox(
                  height: 15,
                ),
                FlatButton(
                  onPressed: () {
                    html.window.open(
                        'https://www.linkedin.com/in/gauravmehta13/',
                        'new tab');
                  },
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Color(0xFF0072b1),
                        ),
                        onPressed: null,
                      ),
                      Text(
                        'Connect With Me on LinkedIn',
                        style: TextStyle(
                          color: Color(0xFF0072b1),
                        ),
                      )
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    html.window.open('https://wa.me/+917073142922', 'new tab');
                  },
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                        ),
                        onPressed: null,
                      ),
                      Text(
                        'Message Me on Whatsapp',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    html.window
                        .open('https://github.com/gauravmehta13', 'new tab');
                  },
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.white60,
                        ),
                        onPressed: null,
                      ),
                      Text(
                        'Follow Me on Github',
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      )
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    html.window.open('https://t.me/gauravmehta13', 'new tab');
                  },
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.telegram,
                          color: Color(0xFF0088cc),
                        ),
                        onPressed: null,
                      ),
                      Text(
                        'Message Me on Telegram',
                        style: TextStyle(
                          color: Color(0xFF0088cc),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Color(0xFFDD2a7b),
                      ),
                      onPressed: () {
                        html.window.open(
                            'https://github.com/gauravmehta13', 'new tab');
                      },
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Color(0xFF00acee),
                      ),
                      onPressed: () {
                        html.window.open(
                            'https://twitter.com/gauravmehta_', 'new tab');
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.mail_outline,
                      ),
                      color: Color(0xFFD44638),
                      onPressed: () {
                        html.window
                            .open('mailto:gauravmehta@outlook.in', 'new tab');
                      },
                    ),
                    IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.medium,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        html.window.open(
                            'https://medium.com/@gauravmehta13', 'new tab');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          /* Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/IMG_20200827_225429.jpg'),
                        fit: BoxFit.fitHeight)),
              ),*/
        ),
      ),
    );
  }
}
