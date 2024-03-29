import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 10.0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Bildirimler",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Notification(
                  profileimage:
                      "https://i.pinimg.com/736x/91/08/af/9108af9efeca78a21fc275fe4f23bf42.jpg",
                  name: "Tunahan yılmaz",
                  time: "3 dk ",
                  state: "fotoğraını beğendi",
                ),
                Notification(
                  profileimage:
                      "https://i.pinimg.com/736x/91/08/af/9108af9efeca78a21fc275fe4f23bf42.jpg",
                  name: "Tunahan yılmaz",
                  time: "3 dk ",
                  state: "fotoğraını beğendi",
                ),
                Notification(
                  profileimage:
                      "https://i.pinimg.com/736x/91/08/af/9108af9efeca78a21fc275fe4f23bf42.jpg",
                  name: "Tunahan yılmaz",
                  time: "3 dk ",
                  state: "fotoğraını beğendi",
                )
              ],
            )
          ],
        ));
  }
}

class Notification extends StatelessWidget {
  final String profileimage;
  final String name;
  final String time;
  final String state;
  const Notification({
    Key key,
    this.profileimage,
    this.name,
    this.time,
    this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.0, bottom: 3.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey, offset: Offset(0.0, 7.0), blurRadius: 7.0),
        ]),
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(40.0),
                    image: DecorationImage(
                        image: NetworkImage(profileimage), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 17.5, fontWeight: FontWeight.bold),
                    ),
                    Text("$time önce $state")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
