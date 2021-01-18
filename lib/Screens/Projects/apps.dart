import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Applications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        )
      ],
      options: CarouselOptions(height: MediaQuery.of(context).size.height),
    ));
  }
}
