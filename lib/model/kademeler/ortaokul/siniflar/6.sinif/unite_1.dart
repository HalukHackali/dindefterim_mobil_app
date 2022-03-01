import 'package:flutter/material.dart';

import 'package:dindefterim_sari/ui/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/ui/layout/unite_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_alt_konu_adi.dart';
import 'package:dindefterim_sari/ui/layout/unite_icerik.dart';


class Alti_A_Birinci_Unite extends StatefulWidget {
  const Alti_A_Birinci_Unite();

  @override
  _Alti_A_Birinci_UniteState createState() => _Alti_A_Birinci_UniteState();
}

class _Alti_A_Birinci_UniteState extends State<Alti_A_Birinci_Unite> {
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
                        const UniteAdi("Peygamber ve İlahi Kitap İnancı"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Kur'an", "Peygamber",
                            "Vahiy", "Elci", "İnanc"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Allah’ın (c.c.) Elçileri: Peygamberler',
                          const UniteIcerik(
                            konuAdi: 'Allah’ın (c.c.) Elçileri: Peygamberler',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/1.unite/6_1_1_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Peygamberlerin Özellikleri ve Görevleri',
                          const UniteIcerik(
                            konuAdi: 'Peygamberlerin Özellikleri ve Görevleri',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/1.unite/6_1_2_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Peygamberler İnsanlar İçin En Güzel Örnektir',
                          const UniteIcerik(
                            konuAdi: 'Peygamberler İnsanlar İçin En Güzel Örnektir',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/1.unite/6_1_3_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Vahiy ve Vahyin Gönderiliş Amacı',
                          const UniteIcerik(
                            konuAdi: 'Vahiy ve Vahyin Gönderiliş Amacı',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/1.unite/6_1_4_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "İlahi Kitaplar",
                          const UniteIcerik(
                            konuAdi: 'İlahi Kitaplar',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/1.unite/6_1_5_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Bir Peygamber Tanıyorum:Hz.Âdem(as)",
                          const UniteIcerik(
                            konuAdi: 'Bir Peygamber Tanıyorum:Hz.Âdem(as)',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/1.unite/6_1_6_unite_icerik.md",
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Kunut Duaları ve Anlamlar",
                          const UniteIcerik(
                            konuAdi: 'Kunut Duaları ve Anlamlar',
                            mdLinkF: KonuIcerikMarkDown(
                              mdLink:
                              "assets/markdown/siniflar_md/6.siniflar_md/1.unite/6_1_7_unite_icerik.md",
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
