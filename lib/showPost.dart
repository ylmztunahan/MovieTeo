import 'package:flutter/material.dart';
import 'package:vizeodevi/commentpage.dart';

class ShowPost extends StatelessWidget {
  String isim, zaman, profilresmi, gonderi;
  ShowPost(
      String yeniIsim, String yeniZaman, String yeniResim, String yeniGonderi) {
    this.isim = yeniIsim;
    this.zaman = yeniZaman;
    this.profilresmi = yeniResim;
    this.gonderi = yeniGonderi;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        elevation: 5.0,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(40.0),
                              image: DecorationImage(
                                  image: NetworkImage(profilresmi),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10.0,
                          height: 20.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              isim,
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text(zaman,
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    gonderi,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Beğen",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )),
                  FlatButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CommentPage()));
                      },
                      icon: Icon(
                        Icons.comment,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Yorum Yap",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )),
                  FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Paylaş",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
