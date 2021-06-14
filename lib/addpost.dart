import 'package:flutter/material.dart';

class AddPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Paylaşım",
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: pageBody(context),
    );
  }
}

Widget pageBody(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      elevation: 8.0,
      child: Container(
        color: Colors.white,
        height: 280.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60.0,
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
                  Text(
                    "Tunahan Yılmaz",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.blue,
                    border: Border.all(width: 2.0, color: Colors.white)),
                height: 40.0,
                width: 150.0,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.share,
                        size: 25.0,
                        color: Colors.white,
                      ),
                      Text("Paylaş",
                          style: TextStyle(
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
