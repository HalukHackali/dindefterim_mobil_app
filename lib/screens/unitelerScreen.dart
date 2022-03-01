import 'package:dindefterim_sari/config/constants.dart';
import 'package:dindefterim_sari/config/size_confige.dart';
import 'package:flutter/material.dart';


class UnitelerScreen extends StatelessWidget {
  String sinifNo = "";
  Widget uniteBir;
  Widget uniteIki;
  Widget uniteUc;
  Widget uniteDort;
  Widget uniteBes;

  UnitelerScreen({
    Key? key,
    required this.uniteBir,
    required this.uniteIki,
    required this.uniteUc,
    required this.uniteDort,
    required this.uniteBes,
    required this.sinifNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: const Color(0xff9182F9),
          iconTheme: const IconThemeData(
            color: Color(0xffEFF2F7),
          ),
          title: Text(
            "$sinifNo Sınıf Üniteler",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color(0xffEFF2F7),
              //fontSize: getRelativeWidth(0.061),
              fontSize: UIHelper.getSiniflarTitleHeight() * 0.8,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: "1.Ünite"),
              Tab(text: "2.Ünite"),
              Tab(text: "3.Ünite"),
              Tab(text: "4.Ünite"),
              Tab(text: "5.Ünite"),
            ],
            indicator: BoxDecoration(color: Color(0xff586191)),
            indicatorColor: Color(0xff586191),
            labelColor: Color(0xffEFF2F7),
          ),
        ),
        body: TabBarView(
          children: [
            uniteBir,
            uniteIki,
            uniteUc,
            uniteDort,
            uniteBes

          ],
        ),
      ),
    );
  }
}
