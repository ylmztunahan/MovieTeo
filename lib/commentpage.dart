import 'package:flutter/material.dart';

class CommentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Yorumlar",
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 7.0),
                            blurRadius: 7.0),
                      ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(40.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://i.pinimg.com/736x/91/08/af/9108af9efeca78a21fc275fe4f23bf42.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Tunahan Yılmaz",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "3 saat önce",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, bottom: 8.0),
                            child: Text(
                                "Bu bir denem yazısıdır, yorumlar buraya yazılacaktır",
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 10, left: 10),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Yorum Yap",
                    suffixIcon: Icon(Icons.comment_bank),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[100],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, -3.0),
                        blurRadius: 7.0),
                  ]),
              height: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
