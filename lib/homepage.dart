import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vizeodevi/hakk%C4%B1m%C4%B1zda.dart';
import 'package:vizeodevi/movieinfopage.dart';
import 'package:vizeodevi/notificationpage.dart';
import 'package:vizeodevi/showPost.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      //AppBarr
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text(
          "MovieTeo",
          style: TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              iconSize: 35.0,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => NotificationPage()));
              })
        ],
      ),
      drawer: Drawer(
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 10),
            child: Text(
              "Hakkımızda",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Hakkimizda()));
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 7.0),
                  blurRadius: 7.0),
            ]),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                addmovie(
                  context,
                  "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg?region=0%2C0%2C540%2C810",
                  "Avenger",
                  "After the devastating events of Avengers: Sonsuzluk Savaşı (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.",
                ),
                addmovie(
                  context,
                  "https://flxt.tmsimg.com/assets/p22804_p_v10_ab.jpg",
                  "Matrix",
                  "When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.",
                ),
                addmovie(
                  context,
                  "https://upload.wikimedia.org/wikipedia/tr/b/b3/Titanik_film.jpg",
                  "Titanic",
                  "A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.",
                ),
                addmovie(
                  context,
                  "https://flxt.tmsimg.com/assets/p7825626_p_v10_af.jpg",
                  "Inception",
                  "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.",
                ),
                addmovie(
                  context,
                  "https://www.arthipo.com/image/cache/catalog/poster/movie/1-758/pfilm85-85-film-avatar4-1000x1000.jpg",
                  "Avatar",
                  "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
                ),
              ],
            ),
          ),
          ShowPost(
            "Tunahan Yılmaz",
            "3 saat önce",
            "https://instagram.fadb3-2.fna.fbcdn.net/v/t51.2885-19/s320x320/35616915_255023318595189_8651342522569719808_n.jpg?tp=1&_nc_ht=instagram.fadb3-2.fna.fbcdn.net&_nc_ohc=Vjcx7w36ROoAX-nmkRi&edm=ABfd0MgBAAAA&ccb=7-4&oh=407275d487ae57dd90fe861b7cf7d07c&oe=60AD8231&_nc_sid=7bff83",
            "Avengers: Age of Ultron filmiyle de başka bir şekilde ölüme meydan okuyor Tony. Hulk’tan yakın mesafeden yediği inanılmaz kuvvetli yumruklara dayanarak yapıyor bunu. Infinity War’da üzerine bir ay parçalayıp fırlatıyor Thanos ama o yine aldırış etmiyor. Ayrıca Civil War’da ona nerdeyse iç kanama geçirtmesi gereken Captain America kalkanının darbelerini göğsüne yese de bana mısın demiyor “Demir Adam”. Son olarak da onu bu denli zeki yapan şeyin de az miktarda Super Soldier Serum olabileceğini söylüyorlar.",
          ),
          ShowPost(
            "Simge Kartal",
            "5 saat önce",
            "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_1280.jpg",
            "Seçilmiş kişi sıradışı güçlere sahip olduğundan, ölümsüzlük ya da dijital yedekleme gibi özelliklerle Neo'nun Matrix evreninde yeniden diriltilmesi olası bir seçenek görünüyor.",
          ),
        ],
      ),
    );
  }
}

Material addmovie(
    BuildContext context, String link, String name, String explanation) {
  return Material(
    child: InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    MovieInfoPage(name, link, explanation)));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(35.0),
                  image: DecorationImage(
                      image: NetworkImage(link), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
