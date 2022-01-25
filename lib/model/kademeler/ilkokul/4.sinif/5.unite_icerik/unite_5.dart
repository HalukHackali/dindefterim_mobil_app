import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_icerik.dart';
import 'package:flutter/material.dart';


class Dort_E_Besinci_Unite extends StatefulWidget {
  const Dort_E_Besinci_Unite();

  @override
  _Dort_E_Besinci_UniteState createState() => _Dort_E_Besinci_UniteState();
}

class _Dort_E_Besinci_UniteState extends State<Dort_E_Besinci_Unite> {
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
                        const UniteAdi("4.Sınıf 5.Ünite Adı"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Cami", "Şadırvan", "İlahi", "Minare", "Öğrenme Alanı"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'Mimarimizde Dinin İzleri',
                            const UniteIcerik(
                              unideninAdi:
                              'Mimarimizde Dinin İzleri',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'Musikimizde Dinin İzleri',
                            const UniteIcerik(
                              unideninAdi:
                              'Musikimizde Dinin İzleri',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Edebiyatımızda Dinin İzleri',
                            const UniteIcerik(
                              unideninAdi:
                              'Edebiyatımızda Dinin İzleri',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Örf ve Âdetlerimizde Dinin İzleri',
                            const UniteIcerik(
                              unideninAdi:
                              'Örf ve Âdetlerimizde Dinin İzleri',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Peygamber Tanıyorum: Hz.Süleyman',
                            const UniteIcerik(
                              unideninAdi:
                              'Bir Peygamber Tanıyorum: Hz.Süleyman',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
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
