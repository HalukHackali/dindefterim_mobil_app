import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';


class Sekizinci_D_Dorduncu_Unite extends StatefulWidget {
  const Sekizinci_D_Dorduncu_Unite();

  @override
  _Sekizinci_D_Dorduncu_UniteState createState() => _Sekizinci_D_Dorduncu_UniteState();
}

class _Sekizinci_D_Dorduncu_UniteState extends State<Sekizinci_D_Dorduncu_Unite> {
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
                        const UniteAdi("Hz.Muhammedin Örnekliği"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("El-Emin", "Hak", "Adalet", "Cesaret", "Hz.Muhammed"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            "Hz. Muhammed’in Doğruluğu ve Güvenilir Kişiliği",
                          const UniteIcerik(
                            konuAdi:
                            'Hz. Muhammed’in Doğruluğu ve Güvenilir Kişiliği',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/4.unite/8_4_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'Hz.Muhammed’in Merhametli ve Affedici Oluşu',
                          const UniteIcerik(
                            konuAdi:
                            'Hz.Muhammed’in Merhametli ve Affedici Oluşu',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/4.unite/8_4_2_unite_icerik.md",
                            ),
                          ), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Hz.Muhammed’in İstişareye  Önem  Vermesi',
                          const UniteIcerik(
                            konuAdi:
                            'Hz.Muhammed’in İstişareye  Önem  Vermesi',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/4.unite/8_4_3_unite_icerik.md",
                            ),
                          ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Hz.Muhammed’in Cesaret ve Kararlılığı',
                          const UniteIcerik(
                            konuAdi:
                            'Hz.Muhammed’in Cesaret ve Kararlılığı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/4.unite/8_4_4_unite_icerik.md",
                            ),
                          ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Hz.Muhammed’in Hakkı Gözetmedeki Hassasiyeti',
                          const UniteIcerik(
                            konuAdi:
                            'Hz.Muhammed’in Hakkı Gözetmedeki Hassasiyeti',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/4.unite/8_4_5_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Hz.Muhammed’in İnsanlara Değer Vermesi',
                          const UniteIcerik(
                            konuAdi:
                            'Hz.Muhammed’in İnsanlara Değer Vermesi',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/4.unite/8_4_6_unite_icerik.md",
                            ),
                          ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Kureyş Suresi ve Anlamı",
                          const UniteIcerik(
                            konuAdi:
                            'Kureyş Suresi ve Anlamı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/4.unite/8_4_7_unite_icerik.md",
                            ),
                          ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            konuAdi:
                            'Ünite Soruları - hazırlanıyor',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/8.siniflar_md/4.unite/8_4_8_unite_icerik.md",
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