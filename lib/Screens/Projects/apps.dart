import 'package:MyPortfolio/Topbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Applications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Topbar(),
        CarouselSlider(
          items: [
            RaisedButton(
              onPressed: () {},
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.all(0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://raw.githubusercontent.com/gauravmehta13/Portfolio/master/Assets/RECON.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            )
          ],
          options: CarouselOptions(
              height: MediaQuery.of(context).size.height - 100,
              viewportFraction: 0.8,
              autoPlay: true,
              enlargeCenterPage: true),
        ),
      ],
    ));
  }
}
