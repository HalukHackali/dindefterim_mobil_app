import 'package:dindefterim_sari/features/okul/model/appbar_markdown_page.dart';
import 'package:flutter/material.dart';


AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: const Icon(Icons.menu_open),
        tooltip: 'Menüyü Aç',
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    ),
    title: Text(
      "Dindefterim",
      style: Theme.of(context).primaryTextTheme.headline1,
    ),
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
