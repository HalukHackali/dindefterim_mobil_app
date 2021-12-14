import 'package:dindefterim_sari/core/view/widget/base/diveder_page_widget.dart';
import 'package:dindefterim_sari/core/view/widget/base/sinif_divider_widget.dart';
import 'package:dindefterim_sari/core/view/widget/card/sinif_card_widget.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/ilkokul/ilkokul_ekranlari.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/ortaokul/ortaokul_ekranlari.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/ortaokul/siniflar/5.sinif/besinci_sinif.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/ortaokul/siniflar/6.sinif/altincii_sinif.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/ortaokul/siniflar/7.sinif/yedinci_sinif.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/ortaokul/siniflar/8.sinif/sekizinci_sinif.dart';
import 'package:dindefterim_sari/core/view/widget/base/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class LiseEkranlari extends StatefulWidget {
  const LiseEkranlari({
    Key? key,
  }) : super(key: key);

  @override
  _LiseEkranlariState createState() => _LiseEkranlariState();
}

class _LiseEkranlariState extends State<LiseEkranlari> {
  final int _aktifIcerikNo = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
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
                    children:  [
                      SinifCardWidget(
                        sinifAdi: "9",
                        sinifAdiYazi: "9.Sınıf",
                        sinifLink: besinciSinif(),
                        kademeAdi: "Lise",
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      SinifCardWidget(
                        sinifAdi: "10",
                        sinifAdiYazi: "10.Sınıf",
                        sinifLink: altincinciSinif(),
                        kademeAdi: "Lise",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      SinifCardWidget(
                        sinifAdi: "11",
                        sinifAdiYazi: "11.Sınıf",
                        sinifLink: const yedinciSinif(),
                        kademeAdi: "Lise",
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      SinifCardWidget(
                        sinifAdi: "12",
                        sinifAdiYazi: "12.Sınıf",
                        sinifLink: const sekizinciSinif(),
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
                  seritBantCard("İlkokul",  IlkokulEkranlari()),
                  const SizedBox(
                    height: 10.0,
                  ),
                  seritBantCard("Ortaokul",  OrtaokulEkranlari()),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            BottomNavBarWidget(activeContentNo: _aktifIcerikNo),
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

