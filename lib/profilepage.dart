import 'package:flutter/material.dart';
import 'package:vizeodevi/profileeditingpage.dart';
import 'package:vizeodevi/showPost.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 10.0,
        centerTitle: false,
        title: Text("Tunahan yılmaz",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        actions: [
          IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.blue[300],
              iconSize: 32.0,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ProfileEditingPage()));
              })
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 7.0),
                  blurRadius: 7.0),
            ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 130.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90.0),
                            color: Colors.indigo,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/736x/91/08/af/9108af9efeca78a21fc275fe4f23bf42.jpg"))),
                      ),
                      Text(
                        "Tunahan yılmaz",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "@ylmaz_tunahan",
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        sayac("Gönderi", "15"),
                        sayac("Takip", "300"),
                        sayac("Takipçi", "426")
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        onSurface: Colors.grey,
                        minimumSize: Size(200.0, 50.0),
                        textStyle: TextStyle(
                          fontSize: 20
                        )
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileEditingPage()));
                      },
                      child: Text("Profili Düzenle"),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ShowPost(
            "Tunahan Yılmaz",
            "3 saat önce",
            "https://i.pinimg.com/736x/91/08/af/9108af9efeca78a21fc275fe4f23bf42.jpg",
            "Avengers: Age of Ultron filmiyle de başka bir şekilde ölüme meydan okuyor Tony. Hulk’tan yakın mesafeden yediği inanılmaz kuvvetli yumruklara dayanarak yapıyor bunu. Infinity War’da üzerine bir ay parçalayıp fırlatıyor Thanos ama o yine aldırış etmiyor. Ayrıca Civil War’da ona nerdeyse iç kanama geçirtmesi gereken Captain America kalkanının darbelerini göğsüne yese de bana mısın demiyor “Demir Adam”. Son olarak da onu bu denli zeki yapan şeyin de az miktarda Super Soldier Serum olabileceğini söylüyorlar.",
          )
        ],
      ),
    );
  }

  Padding sayac(String baslik, String sayi) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            sayi,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            baslik,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
