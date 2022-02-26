import 'package:dindefterim_sari/core/constants.dart';
import 'package:dindefterim_sari/core/feature/botton_nav_bar_model.dart';
import 'package:dindefterim_sari/core/size_confige.dart';
import 'package:dindefterim_sari/model/kademeler/lise/lise_ekranlari.dart';
import 'package:dindefterim_sari/ui/widget/card/sinif_card_widget.dart';
import 'package:dindefterim_sari/ui/widget/card/kademe_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/ortaokul_ekranlari.dart';
import 'package:dindefterim_sari/ui/widget/base/diveder_page_widget.dart';
import 'package:dindefterim_sari/ui/widget/base/sinif_divider_widget.dart';

import '4.sinif/dorduncu_sinif.dart';

class IlkokulEkranlari extends StatefulWidget {
  const IlkokulEkranlari({
    Key? key,
  }) : super(key: key);

  @override
  _IlkokulEkranlariState createState() => _IlkokulEkranlariState();
}

class _IlkokulEkranlariState extends State<IlkokulEkranlari> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xff586191),
          ),
          backgroundColor: const Color(0xffFFCA8C),
          title: Text(
            "İlkokul",
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
                        sinifLink: DorduncuSinif(),
                        resim: "assets/images/4_sinif.png",
                        sinifRenk: Color(0xffB8ACFF),
                        sinifRenk_2: Color(0xffB8ACFF),
                        sinifRenk_3: Color(0xffB8ACFF),
                        arkaPlanRenk: kHardTextColor,
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
                    kademefRenk: Color(0xff5DF9D3),
                    kademefRenk_2: Color(0xff45BAFB),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
            /*
                  const KademeCardWidget(
                    kategoriIcon: Icon(Icons.favorite),
                    sinifAdi: "9-10-11-12",
                    kademeAdi: "Lise",
                    kademeLink: LiseEkranlari(),
                    kademefRenk: Color(0xff85E4FD),
                    kademefRenk_2:  Color(0xffFFCA8C),
                  ),
                  */
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
