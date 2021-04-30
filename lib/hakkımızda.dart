import 'package:flutter/material.dart';

class Hakkimizda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkımızda"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            "Bu Uygulama Dr. Öğretim Üyesi Ahmet Cevahir Çınar tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 183311006 numaralı Öğrenci Tunahan Yılmaz tarafından 30 Nisan 2021 günü yapılmıştır."),
      ),
    );
  }
}
