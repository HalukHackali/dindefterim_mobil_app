import 'package:flutter/material.dart';

import 'package:dindefterim_sari/screens/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/screens/layout/unite_adi.dart';
import 'package:dindefterim_sari/screens/layout/unite_alt_konu_adi.dart';


class Sekizinci_D_Dorduncu_Unite extends StatefulWidget {
  const Sekizinci_D_Dorduncu_Unite();

  @override
  _Sekizinci_D_Dorduncu_UniteState createState() => _Sekizinci_D_Dorduncu_UniteState();
}

class _Sekizinci_D_Dorduncu_UniteState extends State<Sekizinci_D_Dorduncu_Unite> {
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
                        const UniteAdi("Hz.Muhammedin Örnekliği"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("1.Kavram", "2.Kavram", "3.Kavram", "4.Kavram", "1.Öğrenme Alanı"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            "Hz. Muhammed’in Doğruluğu ve Güvenilir Kişiliği",
                            const NoReadyPage(), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            'Hz.Muhammed’in Merhametli ve Affedici Oluşu',
                            const NoReadyPage(), ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Hz.Muhammed’in İstişareye  Önem  Vermesi',
                            const NoReadyPage(),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Hz.Muhammed’in Hakkı Gözetmedeki Hassasiyeti',
                            const NoReadyPage(),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            'Hz.Muhammed’in İnsanlara Değer Vermesi',
                            const NoReadyPage(),
                            ),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Bir Sure Tanıyorum: Kureyş Suresi ve Anlamı",
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