import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Oniki_C_Ucuncu_Unite extends StatefulWidget {
  const Oniki_C_Ucuncu_Unite();

  @override
  _Oniki_C_Ucuncu_UniteState createState() => _Oniki_C_Ucuncu_UniteState();
}

class _Oniki_C_Ucuncu_UniteState extends State<Oniki_C_Ucuncu_Unite> {
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
                        const UniteAdi("İslam Düşüncesinde Tasavvufi Yorum"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Tasavvuf", "Edep", "Mürşid", "Erkan", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          'Tasavvufi Düşüncenin Oluşumu',
                          const UniteIcerik(
                            konuAdi:
                            'Tasavvufi Düşüncenin Oluşumu',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'Tasavvufi Düşüncenin Ahlaki Boyutu',
                          const UniteIcerik(
                            konuAdi:
                            'Tasavvufi Düşüncenin Ahlaki Boyutu',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Kültürümüzde Etkin Olan Tasavvufi Yorumlar',
                          const UniteIcerik(
                            konuAdi:
                            'Kültürümüzde Etkin Olan Tasavvufi Yorumlar',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Hucurât Suresi 10. Ayet',
                          const UniteIcerik(
                            konuAdi:
                            'Hucurât Suresi 10. Ayet',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          const NoReadyPage(),
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
