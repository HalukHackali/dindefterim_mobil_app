import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  final String userNAme = 'Kullarını Adı';
  final String userEmail = 'kullanici@email.com';

  final String derslerim = 'Derslerim';
  final String sinavlarim = 'Sınavlarım';
  final String settings = 'Ayarlar';
  final String exit = 'Çıkış yap';

  final String userAvatar =
      'https://cdn.pixabay.com/photo/2015/03/04/22/35/head-659651_960_720.png';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              userNAme,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            accountEmail: Text(
              userEmail,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(userAvatar), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            decoration: const BoxDecoration(color: Color(0xff263238)),
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: Text(
              derslerim,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.amber,
                  ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.quiz_rounded),
            title: Text(
              sinavlarim,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              settings,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
            onTap: () {},
          ),
          ListTile(
            tileColor: Colors.redAccent,
            leading: const Icon(Icons.exit_to_app),
            title: Text(
              exit,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
