import 'package:flutter/material.dart';
import 'package:vizeodevi/commentpage.dart';

class ShowPost extends StatefulWidget {
  String isim, zaman, profilresmi, gonderi;

  ShowPost(
      String yeniIsim, String yeniZaman, String yeniResim, String yeniGonderi) {
    this.isim = yeniIsim;
    this.zaman = yeniZaman;
    this.profilresmi = yeniResim;
    this.gonderi = yeniGonderi;
  }

  @override
  _ShowPostState createState() => _ShowPostState();
}
class SimpleDialog extends StatelessWidget {
  final title;
  SimpleDialog(this.title);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Alert'),
      content: Text(title),
      actions: <Widget>[
        // usually buttons at the bottom of the dialog
        new FlatButton(
          child: new Text("Close"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class _ShowPostState extends State<ShowPost> {
  String remk;

  get onPressed => null;

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
                                  image: NetworkImage(widget.profilresmi),
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
                              widget.isim,
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text(widget.zaman,
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                      
                    })
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onLongPress: (){
                    showDialog(context: context, builder: (BuildContext context){
                        return SimpleDialog("Bu Post üzerinde Düzenleme Yapmaya Yetkiniz Yok");
                      });
                  },
                  onDoubleTap: (){
                    setState(() {
                          remk = 'degistir';
                        });
                  },
                  child: Container(
                  child: Text(
                    widget.gonderi,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton.icon(
                      onPressed: () {
                        setState(() {
                          remk = '';
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: remk=='degistir'?Colors.red:Colors.grey,
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
