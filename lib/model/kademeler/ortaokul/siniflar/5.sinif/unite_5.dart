import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';


class Bes_E_Besinci_Unite extends StatefulWidget {
  const Bes_E_Besinci_Unite();

  @override
  _Bes_E_Besinci_UniteState createState() => _Bes_E_Besinci_UniteState();
}

class _Bes_E_Besinci_UniteState extends State<Bes_E_Besinci_Unite> {
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
                        const UniteAdi("Çevremizde Dinin İzleri"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Cami", "Şadırvan", "İlahi", "Minare", "Öğrenme Alanı"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'Mimarimizde Dinin İzleri',
                            const UniteIcerik(
                              konuAdi:
                              'Mimarimizde Dinin İzleri',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5.unite/5_5_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'Musikimizde Dinin İzleri',
                            const UniteIcerik(
                              konuAdi:
                              'Musikimizde Dinin İzleri',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5.unite/5_5_2_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Edebiyatımızda Dinin İzleri',
                            const UniteIcerik(
                              konuAdi:
                              'Edebiyatımızda Dinin İzleri',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5.unite/5_5_3_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Örf ve Âdetlerimizde Dinin İzleri',
                            const UniteIcerik(
                              konuAdi:
                              'Örf ve Âdetlerimizde Dinin İzleri',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5.unite/5_5_4_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Peygamber Tanıyorum: Hz.Süleyman',
                            const UniteIcerik(
                              konuAdi:
                              'Bir Peygamber Tanıyorum: Hz.Süleyman',
                              mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5.unite/5_5_5_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Ünite Soruları - hazırlanıyor",
                          const UniteIcerik(
                            konuAdi:
                            'Ünite Soruları - hazırlanıyor"',
                            mdLinkF:  KonuIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5.unite/5_5_6_unite_icerik.md",),
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
