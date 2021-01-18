import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/Blog/Blog.dart';
import 'Screens/ContactMe/ContactMe.dart';
import 'Screens/HomePage/HomePage.dart';
import 'Screens/Projects/Projects.dart';
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
        '/Projects': (context) => Projects(),
      },
      debugShowCheckedModeBanner: false,
      title: "Gaurav's Portfolio",
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}
