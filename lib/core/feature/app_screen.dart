import 'package:dindefterim_sari/core/feature/search_field.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_confige.dart';
import 'banner.dart';
import 'bottom_navigation_bar.dart';
import 'kademeler_list.dart';
import 'siniflar_list.dart';

class ApprScreen extends StatefulWidget {
  const ApprScreen({Key? key}) : super(key: key);

  @override
  _ApprScreenState createState() => _ApprScreenState();
}

class _ApprScreenState extends State<ApprScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(height: getRelativeHeight(0.025)),
              // const UserAppBar(),
              SizedBox(height: getRelativeHeight(0.025)),
              const MainScreenBanner(),
              SizedBox(height: getRelativeHeight(0.005)),
              SearchField(),
              SizedBox(height: getRelativeHeight(0.025)),
              const KademelerList(),
              SizedBox(height: getRelativeHeight(0.01)),
              const SiniflarList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedIndex,
        onItemPressed: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        centerIcon: Icons.place,
        itemIcons: const [
          Icons.home,
          Icons.notifications,
          Icons.message,
          Icons.account_box,
        ],
      ),
    );
  }
}
