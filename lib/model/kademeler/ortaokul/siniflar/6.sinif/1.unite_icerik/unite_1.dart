import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';


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
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Peygamberlerin Özellikleri ve Görevleri',
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Peygamberlerin Özellikleri ve Görevleri',
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Peygamberler İnsanlar İçin En Güzel Örnektir',
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Vahiy ve Vahyin Gönderiliş Amacı',
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "İlahi Kitaplar",
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Bir Peygamber Tanıyorum:Hz.Âdem(as)",
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          "Kunut Duaları ve Anlamlar",
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
