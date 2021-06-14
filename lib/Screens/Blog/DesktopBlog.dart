import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import '../../Topbar.dart';
import 'blogdata.dart';

class DesktopBlog extends StatefulWidget {
  @override
  _DesktopBlogState createState() => _DesktopBlogState();
}

class _DesktopBlogState extends State<DesktopBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          automaticallyImplyLeading: false,
          actions: <Widget>[Topbar()],
        ),
        body: Container(
          color: Colors.black,
          child: GridView.builder(
            itemCount: blogdata.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (500 / 250),
            ),
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.all(10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                elevation: 15,
                child: MaterialButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    html.window
                        .open(blogdata[index]['onpressedurl']!, 'new tab');
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: double.maxFinite,
                        width: (MediaQuery.of(context).size.width) / 4,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Image(
                              fit: BoxFit.fitHeight,
                              image: NetworkImage(blogdata[index]['imgurl']!)),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          width: (MediaQuery.of(context).size.width) / 4 - 28,
                          height: double.maxFinite,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Spacer(),
                              Text(blogdata[index]['title']!,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )),
                              Spacer(),
                              Text(blogdata[index]['subtitle']!,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                  )),
                              Spacer(),
                              Row(
                                children: [
                                  Spacer(),
                                  Text(blogdata[index]['date']!,
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300),
                                      )),
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
