import 'package:dindefterim_sari/model/appbar_markdown.dart';
import 'package:flutter/material.dart';


AppBar customBuildAppBar(BuildContext context) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: const Icon(Icons.menu_open),
        color: Theme.of(context).colorScheme.secondary,
        iconSize: 32.0,
        tooltip: 'Menüyü Aç',
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
    ),
    title: Text(
      "Dindefterim",
      style: Theme.of(context).textTheme.headline4!.copyWith(color: Theme.of(context).colorScheme.secondary),
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.account_circle),
        color: Theme.of(context).colorScheme.secondary,
        tooltip: 'Kullanıcı Girişi',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Kullanıcı Menüsü Henüz Aktif Değil!')));
        },
      ),
      IconButton(
        icon: const Icon(Icons.navigate_next),
        color: Theme.of(context).colorScheme.secondary,
        iconSize: 32.0,
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
