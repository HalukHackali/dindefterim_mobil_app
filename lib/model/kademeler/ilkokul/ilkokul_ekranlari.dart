import 'package:dindefterim_sari/core/constants.dart';
import 'package:dindefterim_sari/core/feature/bottom_navigation_bar.dart';
import 'package:dindefterim_sari/core/feature/botton_nav_bar_model.dart';
import 'package:dindefterim_sari/model/kademeler/lise/lise_ekranlari.dart';
import 'package:dindefterim_sari/ui/widget/card/sinif_card_widget.dart';
import 'package:dindefterim_sari/ui/widget/card/kademe_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/ortaokul_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/5.sinif/besinci_sinif.dart';
import 'package:dindefterim_sari/ui/widget/base/diveder_page_widget.dart';
import 'package:dindefterim_sari/ui/widget/base/sinif_divider_widget.dart';

class IlkokulEkranlari extends StatefulWidget {
  IlkokulEkranlari({
    Key? key,
  }) : super(key: key);

  @override
  _IlkokulEkranlariState createState() => _IlkokulEkranlariState();
}

class _IlkokulEkranlariState extends State<IlkokulEkranlari> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: const Text("İlkokul"),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 15.0,
                  ),
                  const SinifDividerWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Sinif_Card_Widget(
                        sinifAdi: '4.Sınıf',
                        kademeAdi: "İlkokul",
                        sinifLink: besinciSinif(),
                        resim: "assets/images/4_sinif.png",
                        sinifRenk: Color(0xffB8ACFF),
                        sinifRenk_2: Color(0xffB8ACFF),
                        sinifRenk_3: Color(0xffB8ACFF),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
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
            ],
          ),
        ),
        bottomNavigationBar: const ButtomNavBarModel(),
      ),
    );
  }
}
