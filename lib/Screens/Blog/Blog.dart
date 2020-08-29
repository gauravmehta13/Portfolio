import 'package:flutter/material.dart';

import 'DesktopBlog.dart';
import 'MobileBlog.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopBlog();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopBlog();
      } else {
        return MobileBlog();
      }
    });
  }
}
