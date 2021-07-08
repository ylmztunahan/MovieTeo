import 'package:flutter/material.dart';

class MovieInfoPage extends StatelessWidget {
  String name, link, explanation;
  MovieInfoPage(String newName, String newLink, String newExplanation) {
    this.name = newName;
    this.link = newLink;
    this.explanation = newExplanation;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 10.0,
        title: Text(name,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        actions: [
          IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.blue[300],
              iconSize: 32.0,
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Hero(
                tag: name,
                child: Container(
                  height: 400.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 7.0),
                            blurRadius: 7.0),
                      ],
                      color: Colors.green,
                      image: DecorationImage(
                          image: NetworkImage(link),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 7.0),
                        blurRadius: 7.0),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.0),
                                color: Colors.blue,
                                border: Border.all(
                                    width: 2.0, color: Colors.white)),
                            height: 40.0,
                            width: 150.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.add_circle,
                                  size: 25.0,
                                  color: Colors.white,
                                ),
                                Text("Takip Et",
                                    style: TextStyle(
                                        fontSize: 23.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(explanation),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
