import 'package:flutter/material.dart';

import 'DesktopContactMe.dart';
import 'MobileContactMe.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopContactMe();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopContactMe();
      } else {
        return MobileContactMe();
      }
    });
  }
}
