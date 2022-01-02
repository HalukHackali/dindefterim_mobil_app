import 'package:dindefterim_sari/core/feature/app_screen.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:flutter/material.dart';



class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
    required int activeContentNo,
  })  : _activeContentNo = activeContentNo,
        super(key: key);

  final int _activeContentNo;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      currentIndex: _activeContentNo,
      selectedItemColor: Colors.white,
      unselectedItemColor: Theme.of(context).colorScheme.onSecondary,
      items: [
        BottomNavigationBarItem(
          icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ApprScreen()),
                );
              },
              child: const Icon(Icons.home)),
          label: "Anasayfa",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NoReadyPage()));
            },
            child: const Icon(Icons.settings),
          ),
          label: "Ayarlar",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ApprScreen()));
            },
            child: const Icon(Icons.account_circle),
          ),
          label: "Kullanıcı",
        ),
      ],
    );
  }
}
