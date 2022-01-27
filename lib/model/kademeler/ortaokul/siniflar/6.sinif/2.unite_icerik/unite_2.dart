import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';




class Bes_B_Ikinci_Unite extends StatefulWidget {
  const Bes_B_Ikinci_Unite();

  @override
  _Bes_B_Ikinci_UniteState createState() => _Bes_B_Ikinci_UniteState();
}

class _Bes_B_Ikinci_UniteState extends State<Bes_B_Ikinci_Unite> {
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
                        const UniteAdi("Namaz"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("1.Kavram", "2.Kavram", "3.Kavram", "4.Kavram", "1.Öğrenme Alanı"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            'Namaz İbadeti ve Önemi',
                            const NoReadyPage(), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'Namaz Çeşitleri',
                            const NoReadyPage(), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Namazın Kılınışı',
                            const NoReadyPage(),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Peygamber Tanıyorum: Hz. Zekeriya (a.s.)',
                            const NoReadyPage(),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Bir Sure Tanıyorum: Fil Suresi ve Anlamı',
                            const NoReadyPage(),
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
