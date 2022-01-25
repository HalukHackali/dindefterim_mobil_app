import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';

class Yedi_A_Birinci_Unite extends StatefulWidget {
  const Yedi_A_Birinci_Unite();

  @override
  _Yedi_A_Birinci_UniteState createState() => _Yedi_A_Birinci_UniteState();
}

class _Yedi_A_Birinci_UniteState extends State<Yedi_A_Birinci_Unite> {
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
                        const UniteAdi("Melek ve Ahiret İnancı"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Haşr", "Sur", "Kıyamet", "Mahşer", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context, '7.Sınıf 1.Ünite',
                            const NoReadyPage(), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context, '7.Sınıf 2.Ünite',
                            const NoReadyPage(), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context, '7.Sınıf 3.Ünite',
                            const NoReadyPage(), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context, '7.Sınıf 3.Ünite',
                            const NoReadyPage(), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context, '7.Sınıf 4.Ünite',
                            const NoReadyPage(), ),
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
