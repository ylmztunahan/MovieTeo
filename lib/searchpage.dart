import 'dart:ui';

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 10.0,
        centerTitle: true,
        title: TextField(
          style: TextStyle(height: 0.5),
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              hintText: "Ara",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )),
        ),
      ),
      body: Column(
        children: [
          Material(
            elevation: 8.0,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, -3.0),
                    blurRadius: 7.0),
              ]),
              height: 60.0,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 5.0, right: 5.0, left: 5.0, bottom: 5.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Options(
                      baslik: "Tümü",
                    ),
                    Options(
                      baslik: "Kişi",
                    ),
                    Options(
                      baslik: "Film",
                    ),
                    Options(
                      baslik: "Etiket",
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class Options extends StatelessWidget {
  final String baslik;
  const Options({
    Key key,
    this.baslik,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8.0,
      child: Container(
        height: 50.0,
        width: 100.0,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              baslik,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
