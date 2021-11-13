import 'package:flutter/material.dart';

import '../yedek_unite_icerik.dart';

AppBar buildAppBar(BuildContext context) {

  return AppBar(
    leading: const Icon(Icons.menu),
    title: const Text("Dindefterim"),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.account_circle),
        color: Colors.grey,
        tooltip: 'Kullanıcı Girişi',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Kullanıcı Menüsü Henüz Aktif Değil!')));
        },
      ),
      IconButton(
        icon: const Icon(Icons.navigate_next),
        tooltip: 'Uygulama Hakknda',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Uygulama Hakında'),
                  ),
                  body: const Center(
                    child: UniteIcerik(unideninAdi: 'Henüz Yapılmadı',),
                  ),
                );
              },
            ),
          );
        },
      ),
    ],
  );
}