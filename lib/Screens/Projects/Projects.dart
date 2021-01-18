import 'package:flutter/material.dart';

import 'Desktop Projects.dart';
import 'mobile projects.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopProjects();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopProjects();
      } else {
        return MobileProjects();
      }
    });
  }
}
