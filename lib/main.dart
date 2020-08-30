import 'package:Portfolio/Screens/Blog/Blog.dart';
import 'package:Portfolio/Screens/ContactMe/ContactMe.dart';

import 'package:flutter/material.dart';

import 'TabBar Unused.dart';
import 'Screens/HomePage/HomePage.dart';
import 'Screens/Resume/Resume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/Resume': (context) => Resume(),
          '/Blog': (context) => Blog(),
          '/ContactMe': (context) => ContactMe(),
        },
        debugShowCheckedModeBanner: false,
        title: "Gaurav's Portfolio",
        theme: ThemeData.dark());
  }
}
