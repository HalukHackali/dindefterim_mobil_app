import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text("Kullanıcı Adı"),
            accountEmail: const Text("kullanici@email.com"),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            decoration: const BoxDecoration(color: Color(0xff263238)),
          ),
          ListTile(
            title: const Text("Derslerim"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Sınavlarım"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Ayarlar"),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Çıkış Yap"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}