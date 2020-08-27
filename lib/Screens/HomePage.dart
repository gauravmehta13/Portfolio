import 'package:custom_navigation_drawer/custom_navigation_drawer.dart';
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
            CollapsingNavigationDrawer(),
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
                      width: 20,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Blog',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Projects',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 20,
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text('Gaurav \n                           Yadav',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 80,
                              fontWeight: FontWeight.w900),
                        )),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      onPressed: () {
                        print("Pressed");
                      }),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.medium),
                      onPressed: () {
                        print("Pressed");
                      }),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.github),
                      onPressed: () {
                        print("Pressed");
                      }),
                  IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      onPressed: () {
                        print("Pressed");
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
