import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Onbir_B_Ikinci_Unite extends StatefulWidget {
  const Onbir_B_Ikinci_Unite();

  @override
  _Onbir_B_Ikinci_UniteState createState() => _Onbir_B_Ikinci_UniteState();
}

class _Onbir_B_Ikinci_UniteState extends State<Onbir_B_Ikinci_Unite> {
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
                        const UniteAdi("Kurana Göre Hz. Muhammed"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani(
                            "Hadis", "Sünnet", "Üsve-i Hasene", "Hetemü'ün-Enbiya", "Hz.Muhammed"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Hz.Muhammed’in Şahsiyeti',
                          const UniteIcerik(
                            konuAdi:
                            'Hz.Muhammed’in Şahsiyeti',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Hz.Muhammed’in Peygamberlik Yönü',
                          const UniteIcerik(
                            konuAdi: '2.Alt konu başlığı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Hz. Muhammed’e Bağlılık ve İtaat',
                          const UniteIcerik(
                            konuAdi:
                            'Hz. Muhammed’e Bağlılık ve İtaat',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Ahzâb Suresi 45-46. Ayetler',
                          const UniteIcerik(
                            konuAdi:
                            'Ahzâb Suresi 45-46. Ayetler',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                                  "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",
                            ),
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
