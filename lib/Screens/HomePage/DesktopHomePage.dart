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
  double toptext = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NotificationListener(
      onNotification: (v) {
        if (v is ScrollUpdateNotification) {
          //only if scroll update notification is triggered
          setState(() {
            toptext -= v.scrollDelta / 1.9;
            topimg -= v.scrollDelta / 2;
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
                  left: 120,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.fromLTRB(70, 200, 30, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Hello, I\u0027m\nGaurav Yadav',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.w400),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            'An Engineering Student and a tech enthusiast working \nto better understand the core concepts behind different \npopular Technologies like Artificial Intelligence,DevOps,\nCloud Computing etc.',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.white38,
                              ),
                            )),
                        SizedBox(height: 200),
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
                              textStyle: TextStyle(color: Colors.white54),
                            )),
                        SizedBox(height: 200),
                        Text('🛠 Tech Stack',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(height: 20),
                        SizedBox(
                          height: 300,
                          child: Text(
                              "•💻   Python | Dart | Flutter\n\n•☁️   AWS | Azure | GCP | OpenStack\n\n•🐳   Docker | Jenkins | Kubernetes | Terraform\n\n•🛢   MySQL | Firebase\n\n•📈   Prometheus | Grafana\n\n•🔧   Jupyter Notebook | Visual Studio code | Git\n\n",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(color: Colors.white54),
                              )),
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
