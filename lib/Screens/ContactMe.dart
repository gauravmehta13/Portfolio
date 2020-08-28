import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.7,
          child: Row(
            children: [
              Spacer(),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: Column(
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
                    Row(
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
                    Row(
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
                    Row(
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
                    Row(
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
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Color(0xFFDD2a7b),
                          ),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Color(0xFF00acee),
                          ),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.mail_outline,
                          ),
                          color: Color(0xFFD44638),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.medium,
                            color: Colors.white70,
                          ),
                          onPressed: null,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/IMG_20200827_225429.jpg'),
                        fit: BoxFit.contain)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
