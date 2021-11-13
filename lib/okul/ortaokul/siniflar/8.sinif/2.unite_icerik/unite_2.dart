import 'package:dindefterim_sari/layout/hazirlaniyor.dart';
import 'package:dindefterim_sari/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/layout/unite_adi.dart';
import 'package:dindefterim_sari/layout/unite_alt_konu_adi.dart';
import 'package:flutter/material.dart';



class Sekizinci_B_Ikinci_Unite extends StatefulWidget {
  const Sekizinci_B_Ikinci_Unite();

  @override
  _Sekizinci_B_Ikinci_UniteState createState() => _Sekizinci_B_Ikinci_UniteState();
}

class _Sekizinci_B_Ikinci_UniteState extends State<Sekizinci_B_Ikinci_Unite> {
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
                        const UniteAdi("6.Sınıf 2.Ünite"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani(
                            "8.Kavram", "2.Kavram", "1.Öğrenme Alanı"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context,
                            '8.Sınıf 1.Ünite',
                            const Hazirlaniyor(), 0xff4C7ABA),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context,
                            '8.Sınıf 2.Ünite',
                            const Hazirlaniyor(), 0xff4C7ABA),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            '8.Sınıf 3.Ünite',
                            const Hazirlaniyor(),
                            0xff4C7ABA),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            '8.Sınıf 3.Ünite',
                            const Hazirlaniyor(),
                            0xff4C7ABA),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            '8.Sınıf 4.Ünite',
                            const Hazirlaniyor(),
                            0xff4C7ABA),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(
                            context,
                            "Ünite Soruları - hazırlanıyor",
                            const Hazirlaniyor(),
                            0xff5593B1),
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