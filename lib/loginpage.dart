import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vizeodevi/controlPage.dart';
import 'package:vizeodevi/homepage.dart';
import 'package:vizeodevi/newaccountpage.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final usernameCont=TextEditingController();

  final passwordCont=TextEditingController();

  void checkLogin(String username,String password)async{
    var users=await Firestore.instance.collection("user").where("kullaniciAdi",isEqualTo: username).getDocuments();
    users.documents.forEach((doc) { 
      print(doc.data["kullaniciAdi"]);  
      print(doc.data["sifre"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/clapperboard-295458_960_720.png"
                          ))),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "MovieTeo",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Material(
              borderRadius: BorderRadius.circular(20.0),
              elevation: 10.0,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    //kullnıcı adı column//
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kullanıcı Adı",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width - 100.0,
                              height: 40.0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: usernameCont,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //şifre column//
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Şifre",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width - 100.0,
                              height: 40.0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: passwordCont,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //giriş butonu containerı//
                    InkWell(
                      onTap: () {
                        //print(usernameCont.text);
                        //print(passwordCont.text);
                        checkLogin(usernameCont.text, passwordCont.text);
                      },
                      child: Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.blue,
                          ),
                          width: 200.0,
                          height: 40.0,
                          child: Text(
                            "Giriş",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      NewAcocountpage()));
                        },
                        child: Text(
                          "yeni hesap oluştur",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
                width: MediaQuery.of(context).size.width - 70.0,
                height: 300.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.blue[300], Colors.blue[100]]),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
