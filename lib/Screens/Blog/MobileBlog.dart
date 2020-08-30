import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;
import 'blogdata.dart';

class MobileBlog extends StatefulWidget {
  @override
  _MobileBlogState createState() => _MobileBlogState();
}

class _MobileBlogState extends State<MobileBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Blog'),
          centerTitle: true,
        ),
        body: GridView.builder(
          itemCount: blogdata.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (60 / 70),
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
                onPressed: () {
                  html.window.open(blogdata[index]['onpressedurl'], 'new tab');
                },
                padding: EdgeInsets.all(0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.maxFinite,
                      height: 150,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Image(
                            fit: BoxFit.contain,
                            image: NetworkImage(blogdata[index]['imgurl'])),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                      child: Text(blogdata[index]['title'],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                      child: Text(blogdata[index]['subtitle'],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.w100),
                          )),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Row(
                        children: [
                          Spacer(),
                          Text(blogdata[index]['date'],
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 5,
                                    fontWeight: FontWeight.w300),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
