import 'package:flutter/material.dart';

import 'Screens/Blog/Blog.dart';
import 'Screens/ContactMe/ContactMe.dart';
import 'Screens/HomePage/HomePage.dart';
import 'Screens/Resume/Resume.dart';

class HomeBarPage extends StatefulWidget {
  @override
  _HomeBarPageState createState() => _HomeBarPageState();
}

class _HomeBarPageState extends State<HomeBarPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  final selectedColor = Colors.red;
  int currentTab;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    currentTab = 0;
  }

  void goTo(int index) {
    this.tabController.animateTo(index);
    setState(() {
      this.currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            goTo(0);
          },
        ),
        title: Text("Test page 1"),
        backgroundColor: Colors.black,
        actions: [
          FlatButton(
              onPressed: () {
                goTo(0);
              },
              child: Text('About Me')),
          FlatButton(
              onPressed: () {
                goTo(1);
              },
              child: Text('Resume')),
          FlatButton(
              onPressed: () {
                goTo(2);
              },
              child: Text('Blog')),
          FlatButton(
              onPressed: () {
                goTo(3);
              },
              child: Text('Contact Me')),
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[HomePage(), Resume(), Blog(), ContactMe()],
      ),
    );
  }
}
