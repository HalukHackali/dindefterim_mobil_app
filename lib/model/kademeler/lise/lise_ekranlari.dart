import 'package:dindefterim_sari/model/kademeler/lise/siniflar/11.sinif/onbirinci_sinif.dart';
import 'package:dindefterim_sari/model/kademeler/lise/siniflar/12.sinif/onikinci_sinif.dart';
import 'package:flutter/material.dart';
import 'package:dindefterim_sari/config/constants.dart';
import 'package:dindefterim_sari/model/botton_nav_bar_model.dart';
import 'package:dindefterim_sari/model/kademeler/ilkokul/ilkokul_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/lise/siniflar/10.sinif/onuncu_sinif.dart';
import 'package:dindefterim_sari/model/kademeler/lise/siniflar/9.sinif/dokuzuncu_sinif.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/ortaokul_ekranlari.dart';
import 'package:dindefterim_sari/ui/widget/base/diveder_page_widget.dart';
import 'package:dindefterim_sari/ui/widget/base/sinif_divider_widget.dart';
import 'package:dindefterim_sari/ui/widget/card/old_sinif_card_widget.dart';

class LiseEkranlari extends StatefulWidget {
  const LiseEkranlari({
    Key? key,
  }) : super(key: key);

  @override
  _LiseEkranlariState createState() => _LiseEkranlariState();
}

class _LiseEkranlariState extends State<LiseEkranlari> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: const Color(0xff586191),
          title: const Text("Lise"),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 25.0,
                  ),
                  const SinifDividerWidget(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SinifCardWidget(
                        sinifAdi: "9",
                        sinifAdiYazi: "9.Sınıf",
                        sinifLink: DokuzuncuSinif(),
                        kademeAdi: "Lise",
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      SinifCardWidget(
                        sinifAdi: "10",
                        sinifAdiYazi: "10.Sınıf",
                        sinifLink: OnuncuSinif(),
                        kademeAdi: "Lise",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SinifCardWidget(
                        sinifAdi: "11",
                        sinifAdiYazi: "11.Sınıf",
                        sinifLink: OnbirinciSinif(),
                        kademeAdi: "Lise",
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      SinifCardWidget(
                        sinifAdi: "12",
                        sinifAdiYazi: "12.Sınıf",
                        sinifLink: OnikinciiSinif(),
                        kademeAdi: "Lise",
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
                  seritBantCard("İlkokul", IlkokulEkranlari()),
                  const SizedBox(
                    height: 10.0,
                  ),
                  seritBantCard("Ortaokul", OrtaokulEkranlari()),
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

  Widget seritBantCard(String kademeAdi, Widget kademeSayfasiLinki) {
    return Material(
      child: Container(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => kademeSayfasiLinki));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Text(
                        kademeAdi,
                        style: const TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white70),
                      ),
                    ),
                    const SizedBox(
                      width: 55.0,
                    ),
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 40.0,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff263238),
              Color(0xff263238),
            ],
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 40.0,
        height: 50.0,
      ),
    );
  }
}
