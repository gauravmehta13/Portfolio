import 'package:MyPortfolio/Topbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Applications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Applications',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: [
                RaisedButton(
                  color: Colors.transparent,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/ReCon.%20(2).png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.transparent,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/RVIVE.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.transparent,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/WA.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.transparent,
                  onPressed: () {},
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/API.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                )
              ],
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height - 100,
                  viewportFraction: 0.7,
                  autoPlay: true,
                  enlargeCenterPage: true),
            ),
          ],
        ));
  }
}
