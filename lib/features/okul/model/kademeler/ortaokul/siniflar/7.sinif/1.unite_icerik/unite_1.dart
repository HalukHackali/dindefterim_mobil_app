import 'package:dindefterim_sari/features/okul/view/layout/hazirlaniyor.dart';
import 'package:dindefterim_sari/features/okul/view/layout/kavramlar_ogrenme_alani_widget.dart';
import 'package:dindefterim_sari/features/okul/view/layout/unite_adi.dart';
import 'package:dindefterim_sari/features/okul/view/layout/unite_alt_konu_adi.dart';
import 'package:flutter/material.dart';


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
                        const UniteAdi("7.Sınıf 1.Ünite"),
                        const SizedBox(height: 10),
                        KavramlarOgrenmeAlani("1.Kavram", "2.Kavram", "3.Kavram", "4.Kavram", "1.Öğrenme Alanı"),
                        const SizedBox(height: 10),
                        unitAltKonuAdiBant(context, '7.Sınıf 1.Ünite',
                            const Hazirlaniyor(), 0xff4C7ABA),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context, '7.Sınıf 2.Ünite',
                            const Hazirlaniyor(), 0xff4C7ABA),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context, '7.Sınıf 3.Ünite',
                            const Hazirlaniyor(), 0xff4C7ABA),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context, '7.Sınıf 3.Ünite',
                            const Hazirlaniyor(), 0xff4C7ABA),
                        const SizedBox(height: 5),
                        unitAltKonuAdiBant(context, '7.Sınıf 4.Ünite',
                            const Hazirlaniyor(), 0xff4C7ABA),
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