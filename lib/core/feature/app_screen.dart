import 'package:dindefterim_sari/core/feature/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../size_confige.dart';
import 'banner.dart';
import 'botton_nav_bar_model.dart';
import 'kademeler_list.dart';
import 'siniflar_list.dart';

class ApprScreen extends StatefulWidget {
   ApprScreen({Key? key}) : super(key: key);

  @override
  _ApprScreenState createState() => _ApprScreenState();
}

class _ApprScreenState extends State<ApprScreen> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) => Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: UIHelper.getAppSizeBoxWidgetHeight()),
                 MainScreenBanner(),
                SizedBox(height: UIHelper.getAppSizeBoxWidgetHeight()),
                if (ScreenUtil().orientation == Orientation.portrait)
                  SearchField(),
                if (ScreenUtil().orientation == Orientation.portrait)
                  SizedBox(height: UIHelper.getAppSizeBoxWidgetHeight()),
                if (ScreenUtil().orientation == Orientation.portrait)
                   KademelerList(),
                if (ScreenUtil().orientation == Orientation.portrait)
                  SizedBox(height: UIHelper.getAppSizeBoxWidgetHeight()),
                if (ScreenUtil().orientation == Orientation.portrait)
                   SiniflarList(),
                if (ScreenUtil().orientation != Orientation.portrait)
                   SiniflarList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar:  ButtomNavBarModel(),
      ),
    );
  }
}
