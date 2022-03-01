import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';

class Onbir_C_Ucuncu_Unite extends StatefulWidget {
  const Onbir_C_Ucuncu_Unite();

  @override
  _Onbir_C_Ucuncu_UniteState createState() => _Onbir_C_Ucuncu_UniteState();
}

class _Onbir_C_Ucuncu_UniteState extends State<Onbir_C_Ucuncu_Unite> {
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
                        const UniteAdi("Kuranda Bazı Kavramlar"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Hidayet", "İhsan", "İhlas", "Takva", "Kur’an ve Yorumu"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                          'İslam’ın Aydınlık Yolu: Hidayet',
                          const UniteIcerik(
                            konuAdi:
                            'İslam’ın Aydınlık Yolu: Hidayet',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                          'Allah’ı Görüyormuşçasına Yaşamak: İhsan',
                          const UniteIcerik(
                            konuAdi:
                            'Allah’ı Görüyormuşçasına Yaşamak: İhsan',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Allah İçin Samimiyet: İhlas',
                          const UniteIcerik(
                            konuAdi:
                            'Allah İçin Samimiyet: İhlas',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Allah’ın Emir ve Yasaklarına Riayet: Takva',
                          const UniteIcerik(
                            konuAdi:
                            'Allah’ın Emir ve Yasaklarına Riayet: Takva',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Dosdoğru Yol: Sırat-ı Müstakim',
                          const UniteIcerik(
                            konuAdi:
                            'Dosdoğru Yol: Sırat-ı Müstakim',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Allah Yolunda Mücahede: Cihat',
                          const UniteIcerik(
                            konuAdi:
                            'Allah Yolunda Mücahede: Cihat',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İyi, Doğru ve Güzel Davranış: Salih Amel',
                          const UniteIcerik(
                            konuAdi:
                            'İyi, Doğru ve Güzel Davranış: Salih Amel',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Kehf Suresi 107-110. Ayetler',
                          const UniteIcerik(
                            konuAdi:
                            'Kehf Suresi 107-110. Ayetler',
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
