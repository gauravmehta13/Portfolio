import 'package:flutter/material.dart';

import 'Screens/HomePage/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio App',
        theme: ThemeData.dark(),
        home: HomePage());
  }
}
