import 'package:Portfolio/Screens/Blog/Blog.dart';
import 'package:Portfolio/Screens/ContactMe.dart';
import 'package:Portfolio/Screens/Projects.dart';
import 'package:flutter/material.dart';

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
          '/Projects': (context) => Projects(),
          '/ContactMe': (context) => ContactMe(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Portfolio App',
        theme: ThemeData.dark());
  }
}
