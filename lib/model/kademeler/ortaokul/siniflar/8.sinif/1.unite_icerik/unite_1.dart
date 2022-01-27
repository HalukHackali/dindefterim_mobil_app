import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';

class Sekizinci_A_Birinci_Unite extends StatefulWidget {
  const Sekizinci_A_Birinci_Unite();

  @override
  _Sekizinci_A_Birinci_UniteState createState() =>
      _Sekizinci_A_Birinci_UniteState();
}

class _Sekizinci_A_Birinci_UniteState extends State<Sekizinci_A_Birinci_Unite> {
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
                        const UniteAdi("Kader İnancı"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("Kader", "Kaza",
                            "İrade", "Tevekkül", "İnanç"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(
                          context,
                          'Kader ve Kaza İnancı',
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'İnsanın İradesi ve Kader',
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Kaderle İlgili Kavramlar',
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Bir Peygamber Tanıyorum:Hz.Musa(as)',
                          const NoReadyPage(),
                        ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                          context,
                          'Ayet el-Kürsi ve Anlamı',
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
