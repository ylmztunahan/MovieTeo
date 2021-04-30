import 'package:flutter/material.dart';
import 'package:vizeodevi/addpost.dart';
import 'package:vizeodevi/homepage.dart';
import 'package:vizeodevi/profilepage.dart';
import 'package:vizeodevi/searchpage.dart';

class ControlPage extends StatefulWidget {
  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  List<Widget> _list;
  int selected_page = 0;
  @override
  void initState() {
    super.initState();
    _list = [Homepage(), SearchPage(), ProfilePage()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddPostPage()));
        },
        child: Icon(Icons.add),
      ),
      body: _list[selected_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_page,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Ana Sayfa"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Film Ara"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text("Profil"),
          ),
        ],
        onTap: (int selected) {
          setState(() {
            selected_page = selected;
          });
        },
      ),
    );
  }
}
