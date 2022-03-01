import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';
import 'package:flutter/material.dart';


class On_D_Dorduncu_Unite extends StatefulWidget {
  const On_D_Dorduncu_Unite();

  @override
  _On_D_Dorduncu_UniteState createState() => _On_D_Dorduncu_UniteState();
}

class _On_D_Dorduncu_UniteState extends State<On_D_Dorduncu_Unite> {
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
                        const UniteAdi("Ahlaki Tutum ve Davranışlar"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Terbiye", "Saciye", "Şahsiyet", "Karakter", "Ahlaki"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'İslam Ahlakının Konusu ve Gayesi',
                            const UniteIcerik(
                              unideninAdi:
                              'İslam Ahlakının Konusu ve Gayesi',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'İslam Ahlakının Kaynakları',
                            const UniteIcerik(
                              unideninAdi:
                              'İslam Ahlakının Kaynakları',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Ahlak ve Terbiye İlişkisi',
                            const UniteIcerik(
                              unideninAdi:
                              'Ahlak ve Terbiye İlişkisi',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'İslam Ahlakında Yerilen Bazı Davranışlar',
                            const UniteIcerik(
                              unideninAdi:
                              'İslam Ahlakında Yerilen Bazı Davranışlar',
                              mdLinkF:  UniteIcerikMarkDown(mdLink: "assets/markdown/siniflar_md/5.siniflar_md/5_1_1_unite_icerik.md",),
                            ),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Hucurât Suresi 11-12. Ayetler',
                            const UniteIcerik(
                              unideninAdi:
                              'Hucurât Suresi 11-12. Ayetler',
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
