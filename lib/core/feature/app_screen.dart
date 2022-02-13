import 'package:dindefterim_sari/core/feature/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/layout/drawer_menu.dart';
import '../constants.dart';
import '../size_confige.dart';
import 'banner.dart';
import 'botton_nav_bar_model.dart';
import 'kademeler_list.dart';
import 'siniflar_list.dart';

class AppScreen extends StatefulWidget {
   const AppScreen({Key? key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) => Scaffold(
        backgroundColor: kBackgroundColor,
        drawer:  const DrawerWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: UIHelper.getAppSizeBoxWidgetHeight()),
                 const MainScreenBanner(),
                SizedBox(height: UIHelper.getAppSizeBoxWidgetHeight()),
                if (ScreenUtil().orientation == Orientation.portrait)
                  SearchField(),
                if (ScreenUtil().orientation == Orientation.portrait)
                  SizedBox(height: UIHelper.getAppSizeBoxWidgetHeight()),
                if (ScreenUtil().orientation == Orientation.portrait)
                   const KademelerList(),
                if (ScreenUtil().orientation == Orientation.portrait)
                  SizedBox(height: UIHelper.getAppSizeBoxWidgetHeight()),
                if (ScreenUtil().orientation == Orientation.portrait)
                   const SiniflarList(),
                if (ScreenUtil().orientation != Orientation.portrait)
                   const SiniflarList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar:  const ButtomNavBarModel(),
      ),
    );
  }
}
