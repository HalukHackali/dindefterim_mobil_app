import 'package:dindefterim_sari/core/feature/search_field.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_confige.dart';
import 'banner.dart';
import 'botton_nav_bar_model.dart';
import 'kademeler_list.dart';
import 'siniflar_list.dart';

class ApprScreen extends StatefulWidget {
  const ApprScreen({Key? key}) : super(key: key);

  @override
  _ApprScreenState createState() => _ApprScreenState();
}

class _ApprScreenState extends State<ApprScreen> {
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
              SizedBox(height: getRelativeHeight(0.025)),
              SearchField(),
              SizedBox(height: getRelativeHeight(0.030)),
              const KademelerList(),
              SizedBox(height: getRelativeHeight(0.025)),
              const SiniflarList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ButtomNavBarModel(),
    );
  }
}
