import 'package:flutter/material.dart';
import 'layout/app_bar_layout.dart';
import '../../../core/view/widget/base/bottom_navigation_bar.dart';
import 'layout/drawer_menu.dart';
import '../../../core/view/widget/base/main_screen_list_widget.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final int _activeContentNo = 0;
  late List<Widget> _icerikler;

//todo: Henüz AnaSayfa, Ayarlar ve Kullanıcı Yok !!!
  @override
  void initState() {
    super.initState();

    _icerikler = [
      mainScreenMenuListView(context),
    ];
    //_icerikler = [mainScreenMenuListView(context), Ayarlar(), Kullanıcı()];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customBuildAppBar(context),
        body: mainScreenMenuListView(context),
        drawer: const DrawerWidget(),
        bottomNavigationBar: BottomNavBarWidget(
          activeContentNo: _activeContentNo,
        ),
      ),
    );
  }
}
