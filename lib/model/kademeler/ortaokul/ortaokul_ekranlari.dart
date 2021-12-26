import 'package:dindefterim_sari/core/feature/bottom_navigation_bar.dart';
import 'package:dindefterim_sari/core/size_confige.dart';
import 'package:dindefterim_sari/ui/widget/base/bottom_navigation_bar.dart';
import 'package:dindefterim_sari/ui/widget/base/diveder_page_widget.dart';
import 'package:dindefterim_sari/ui/widget/base/sinif_divider_widget.dart';
import 'package:dindefterim_sari/ui/widget/card/kademe_card_widget.dart';
import 'package:dindefterim_sari/ui/widget/card/sinif_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dindefterim_sari/model/kademeler/ilkokul/ilkokul_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/lise/lise_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/5.sinif/besinci_sinif.dart';

class OrtaokulEkranlari extends StatefulWidget {
  const OrtaokulEkranlari({Key? key}) : super(key: key);

  @override
  _OrtaokulEkranlariState createState() => _OrtaokulEkranlariState();
}

class _OrtaokulEkranlariState extends State<OrtaokulEkranlari> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: const Text("Ortaokul"),
        ),
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(
                height: 25.0,
              ),
              const SinifDividerWidget(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: getRelativeWidth(0.035)),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Sinif_Card_Widget(
                          sinifAdi: '5.Sınıf',
                          kademeAdi: "Ortaokul",
                          sinifLink: besinciSinif(),
                          resim: "assets/images/5_sinif.png",
                          sinifRenk: Color(0xffB8ACFF),
                          sinifRenk_2: Color(0xffB8ACFF),
                          sinifRenk_3: Color(0xffB8ACFF),
                        ),
                        Sinif_Card_Widget(
                          sinifAdi: '6.Sınıf',
                          kademeAdi: "Ortaokul",
                          sinifLink: besinciSinif(),
                          resim: "assets/images/6_sinif.png",
                          sinifRenk: Color(0xffB8ACFF),
                          sinifRenk_2: Color(0xffB8ACFF),
                          sinifRenk_3: Color(0xffB8ACFF),
                        ),
                        Sinif_Card_Widget(
                          sinifAdi: '7.Sınıf',
                          kademeAdi: "Ortaokul",
                          sinifLink: besinciSinif(),
                          resim: "assets/images/7_sinif.png",
                          sinifRenk: Color(0xffB8ACFF),
                          sinifRenk_2: Color(0xffB8ACFF),
                          sinifRenk_3: Color(0xffB8ACFF),
                        ),
                        Sinif_Card_Widget(
                          sinifAdi: '8.Sınıf',
                          kademeAdi: "Ortaokul",
                          sinifLink: besinciSinif(),
                          resim: "assets/images/8_sinif.png",
                          sinifRenk: Color(0xffB8ACFF),
                          sinifRenk_2: Color(0xffB8ACFF),
                          sinifRenk_3: Color(0xffB8ACFF),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const DividerPageWidget(),
              const SizedBox(
                height: 15.0,
              ),
              const KademeCardWidget(
                kategoriIcon: Icon(Icons.favorite),
                sinifAdi: "5-6-7-8",
                kademeAdi: "Ortaokul",
                kademeLink: OrtaokulEkranlari(),
                kademefRenk: Color(0xffFFCA8C),
                kademefRenk_2: Color(0xffFFCA8C),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const KademeCardWidget(
                kategoriIcon: Icon(Icons.favorite),
                sinifAdi: "9-10-11-12",
                kademeAdi: "Lise",
                kademeLink: LiseEkranlari(),
                kademefRenk: Color(0xff5DF9D3),
                kademefRenk_2: Color(0xff5DF9D3),
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
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
      ),
    );
  }
}
