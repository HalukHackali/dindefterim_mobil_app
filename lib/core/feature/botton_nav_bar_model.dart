import 'package:flutter/material.dart';

import 'bottom_navigation_bar.dart';

class ButtomNavBarModel extends StatefulWidget {
  const ButtomNavBarModel({Key? key}) : super(key: key);

  @override
  _ButtomNavBarModelState createState() => _ButtomNavBarModelState();
}

class _ButtomNavBarModelState extends State<ButtomNavBarModel> {
  @override
  Widget build(BuildContext context) {
    return buildBottomNavigation();
  }
}


BottomNavigation buildBottomNavigation() {
  int _selectedIndex = -1;

  return BottomNavigation(
    selectedIndex: _selectedIndex,
    onItemPressed: (index) {
       dynamic setState;
       setState = setState(() {
        _selectedIndex = index;
      });
    },
    centerIcon: Icons.home,
    itemIcons: const [
      Icons.menu,
      Icons.settings,
      Icons.message,
      Icons.account_box,
    ],
  );
}