import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';




class Bes_C_Ucuncu_Unite extends StatefulWidget {
  const Bes_C_Ucuncu_Unite();

  @override
  _Bes_C_Ucuncu_UniteState createState() => _Bes_C_Ucuncu_UniteState();
}

class _Bes_C_Ucuncu_UniteState extends State<Bes_C_Ucuncu_Unite> {
  bool shouldPop = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
          onWillPop: () async {
            return shouldPop;
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const UniteAdi("Zararlı Alışkanlıklar"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Bağımlılık", "Kumar", "İçki", "Sigara", "Ahlak"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'Bazı Zararlı Alışkanlıklar',
                          const UniteIcerik(
                            unideninAdi: 'Bazı Zararlı Alışkanlıklar',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/3.unite/6_3_1_unite_icerik.md",
                            ),
                          ), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'Zararlı Alışkanlıklara Başlama Sebepleri',
                          const UniteIcerik(
                            unideninAdi: 'Zararlı Alışkanlıklara Başlama Sebepleri',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/3.unite/6_3_2_unite_icerik.md",
                            ),
                          ),  ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Zararlı Alışkanlıklardan Korunma Yolları',
                          const UniteIcerik(
                            unideninAdi: 'Zararlı Alışkanlıklardan Korunma Yolları',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/3.unite/6_3_3_unite_icerik.md",
                            ),
                          ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Peygamber Tanıyorum: Hz.Yahya(as)',
                          const UniteIcerik(
                            unideninAdi: 'Bir Peygamber Tanıyorum: Hz.Yahya(as)',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/3.unite/6_3_4_unite_icerik.md",
                            ),
                          ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Bir Sure Tanıyorum: Tebbet Suresi ve Anlamı",
                          const UniteIcerik(
                            unideninAdi: 'Bir Sure Tanıyorum: Tebbet Suresi ve Anlamı',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/3.unite/6_3_5_unite_icerik.md",
                            ),
                          ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            unideninAdi: 'Ünite Soruları - hazırlanıyor',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/3.unite/6_3_6_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}