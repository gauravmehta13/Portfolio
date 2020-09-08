import 'package:flutter/material.dart';
import 'Screens/Blog/Blog.dart';
import 'Screens/ContactMe/ContactMe.dart';
import 'Screens/HomePage/HomePage.dart';
import 'Screens/Resume/Resume.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
