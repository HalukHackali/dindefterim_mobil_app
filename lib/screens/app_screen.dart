import 'package:dindefterim_sari/feature/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/constants.dart';
import '../config/size_confige.dart';
import '../ui/layout/drawer_menu.dart';
import '../ui/widget/banner.dart';
import '../model/botton_nav_bar_model.dart';
import '../ui/widget/kademeler_list.dart';
import '../ui/widget/siniflar_list.dart';

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
                if (ScreenUtil().orientation == Orientation.portrait)
                  const MainScreenBanner(),
                if (ScreenUtil().orientation != Orientation.portrait)
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
