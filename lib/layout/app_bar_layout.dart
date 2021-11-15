import 'package:flutter/material.dart';

import '../yedek_unite_icerik.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: const Icon(Icons.menu),
    title: const Text("Dindefterim"),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.account_circle),
        color: Colors.white,
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
                return const Scaffold(
                  body: Center(
                    child: UniteIcerik(
                      unideninAdi: 'Uygulama Hakkında',
                    ),
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
