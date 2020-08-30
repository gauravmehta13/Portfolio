import 'package:Portfolio/Screens/HomePage/DesktopHomePage.dart';
import 'package:Portfolio/Screens/HomePage/MobileHomePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopHomePage();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopHomePage();
      } else {
        return MobileHomePage();
      }
    });
  }
}
