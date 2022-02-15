import 'package:dindefterim_sari/core/constants.dart';
import 'package:dindefterim_sari/core/feature/bottom_navigation_bar.dart';
import 'package:dindefterim_sari/core/size_confige.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/6.sinif/altincii_sinif.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/7.sinif/yedinci_sinif.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/8.sinif/sekizinci_sinif.dart';
import 'package:dindefterim_sari/ui/widget/base/diveder_page_widget.dart';
import 'package:dindefterim_sari/ui/widget/base/sinif_divider_widget.dart';
import 'package:dindefterim_sari/ui/widget/card/kademe_card_widget.dart';
import 'package:dindefterim_sari/ui/widget/card/sinif_card_widget.dart';
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
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xff586191),
          ),
          backgroundColor: const Color(0xff85E4FD),
          title: Text(
            "Ortaokul",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kHardTextColor,
              //fontSize: getRelativeWidth(0.061),
              fontSize: UIHelper.getSiniflarTitleHeight(),
            ),
          ),
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
                padding:
                    EdgeInsets.symmetric(horizontal: getRelativeWidth(0.035)),
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
                          arkaPlanRenk: Color(0xff31DFB5),
                        ),
                        Sinif_Card_Widget(
                          sinifAdi: '6.Sınıf',
                          kademeAdi: "Ortaokul",
                          sinifLink: altincinciSinif(),
                          resim: "assets/images/6_sinif.png",
                          sinifRenk: Color(0xffB8ACFF),
                          sinifRenk_2: Color(0xffB8ACFF),
                          sinifRenk_3: Color(0xffB8ACFF),
                          arkaPlanRenk: Color(0xff9182F9),
                        ),
                        Sinif_Card_Widget(
                          sinifAdi: '7.Sınıf',
                          kademeAdi: "Ortaokul",
                          sinifLink: yedinciSinif(),
                          resim: "assets/images/7_sinif.png",
                          sinifRenk: Color(0xff5DF9D3),
                          sinifRenk_2: Color(0xff5DF9D3),
                          sinifRenk_3: Color(0xff5DF9D3),
                          arkaPlanRenk: Color(0xffFFCA8C),
                        ),
                        Sinif_Card_Widget(
                          sinifAdi: '8.Sınıf',
                          kademeAdi: "Ortaokul",
                          sinifLink: sekizinciSinif(),
                          resim: "assets/images/8_sinif.png",
                          sinifRenk: Color(0xff5DF9D3),
                          sinifRenk_2: Color(0xff5DF9D3),
                          sinifRenk_3: Color(0xff5DF9D3),
                          arkaPlanRenk: Color(0xff45BAFB),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const DividerPageWidget(),
              const SizedBox(
                height: 10.0,
              ),
              const KademeCardWidget(
                kategoriIcon: const Icon(Icons.favorite),
                sinifAdi: "4",
                kademeAdi: "İlkokul",
                kademeLink: const IlkokulEkranlari(),
                kademefRenk: const Color(0xffFFCA8C),
                kademefRenk_2: Color(0xffFEA741),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const KademeCardWidget(
                kategoriIcon: Icon(Icons.favorite),
                sinifAdi: "9-10-11-12",
                kademeAdi: "Lise",
                kademeLink: LiseEkranlari(),
                kademefRenk: Color(0xff85E4FD),
                kademefRenk_2: Color(0xffFFCA8C),
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
