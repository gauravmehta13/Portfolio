import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import '../../TopBar.dart';
import 'SideBar.dart';

class MobileHomePage extends StatelessWidget {
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
            Align(
              child: Stack(
                children: <Widget>[
                  Image(
                    image: NetworkImage(
                      "https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/HomeView.jpg",
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 5,
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
                                    child: Text("Hello, I'm\nGaurav Yadav",
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,
                                              fontWeight: FontWeight.w400),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                      'An Engineering Student and a tech enthusiast working to better understand the core concepts behind different popular Technologies like Artificial Intelligence,DevOps,Cloud Computing etc.',
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color: Colors.white54,
                                        ),
                                      )),
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Text('👨🏻‍💻 About Me',
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Colors.white60,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(height: 20),
                                  Text(
                                      '•🔭   Currently learning Data Science from Applied.ai. \n\n•🤔   Actively contributing to various Open-Source Projects.\n\n•🎓   Completed my graduation from Rajasthan Technical University.\n',
                                      style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: Colors.white54),
                                      )),
                                  SizedBox(height: 100),
                                  Text('🛠 Tech Stack',
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Colors.white60,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(height: 20),
                                  Text(
                                      "•💻   Python | Dart | Flutter\n\n•☁️   AWS | Azure | GCP | OpenStack\n\n•🐳   Docker | Jenkins | Kubernetes | Terraform\n\n•🛢   MySQL | Firebase\n\n•📈   Prometheus | Grafana\n\n•🔧   Jupyter Notebook | Visual Studio code | Git\n\n",
                                      style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: Colors.white54),
                                      )),
                                  SizedBox(
                                    height: 100,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Topbar(),
            SideBar(),
          ],
        ),
      ),
    );
  }
}
