import 'package:dindefterim_sari/features/okul/view/mainpage_view.dart';
import 'package:flutter/material.dart';

import 'no_ready_page.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
    required int aktifIcerikNo,
  }) : _aktifIcerikNo = aktifIcerikNo, super(key: key);

  final int _aktifIcerikNo;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      currentIndex: _aktifIcerikNo,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[700],
      items:  [
        BottomNavigationBarItem(
          icon: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainPageView()));
              },
              child: const Icon(Icons.home)),
          label: "Anasayfa",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NoReadyPage()));
              },
              child: const Icon(Icons.settings)),
          label: "Ayarlar",
        ),
        BottomNavigationBarItem(
          icon: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NoReadyPage()));
              },
              child: const Icon(Icons.account_circle)),
          label: "Kullanıcı",
        ),
      ],
    );
  }
}