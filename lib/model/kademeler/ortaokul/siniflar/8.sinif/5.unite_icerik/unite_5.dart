import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';



class Sekizinci_E_Besinci_Unite extends StatefulWidget {
  const Sekizinci_E_Besinci_Unite();

  @override
  _Sekizinci_E_Besinci_UniteState createState() => _Sekizinci_E_Besinci_UniteState();
}

class _Sekizinci_E_Besinci_UniteState extends State<Sekizinci_E_Besinci_Unite> {

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
                        const UniteAdi("Kuran-ı Kerim ve Özellikleri"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Kadir", "Ayet", "Sure", "Sünnet", "Kur'an-ı Kerim"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'İslam Dininin Temel Kaynakları',
                          const UniteIcerik(
                            unideninAdi:
                            'İslam Dininin Temel Kaynakları',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/5.unite/8_5_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'Kur’an-ı Kerim’in Ana Konuları',
                          const UniteIcerik(
                            unideninAdi:
                            'Kur’an-ı Kerim’in Ana Konuları',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/5.unite/8_5_2_unite_icerik.md",
                            ),
                          ), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Kur’an-ı Kerim’in Temel Özellikleri',
                          const UniteIcerik(
                            unideninAdi:
                            'Kur’an-ı Kerim’in Temel Özellikleri',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/5.unite/8_5_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Peygamber Tanıyorum: Hz. Nuh (a.s.)',
                          const UniteIcerik(
                            unideninAdi:
                            'Bir Peygamber Tanıyorum: Hz. Nuh (a.s.)',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/5.unite/8_5_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            unideninAdi:
                            'Ünite Soruları - hazırlanıyor',
                            mdLinkF: UniteIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/5.unite/8_5_5_unite_icerik.md",
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