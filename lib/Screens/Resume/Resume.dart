import 'package:flutter/material.dart';

import 'DesktopResume.dart';
import 'MobileResume.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopResume();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopResume();
      } else {
        return MobileResume();
      }
    });
  }
}
