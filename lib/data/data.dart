import 'package:dindefterim_sari/model/kademe.dart';
import 'package:dindefterim_sari/model/kademeler/ilkokul/siniflar/4.sinif/unite_1.dart';
import 'package:dindefterim_sari/model/kademeler/ilkokul/siniflar/4.sinif/unite_2.dart';
import 'package:dindefterim_sari/model/kademeler/ilkokul/siniflar/4.sinif/unite_3.dart';
import 'package:dindefterim_sari/model/kademeler/ilkokul/siniflar/4.sinif/unite_4.dart';
import 'package:dindefterim_sari/model/kademeler/ilkokul/siniflar/4.sinif/unite_5.dart';

import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/5.sinif/unite_1.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/6.sinif/unite_1.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/6.sinif/unite_2.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/6.sinif/unite_3.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/6.sinif/unite_4.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/6.sinif/unite_5.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/7.sinif/unite_1.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/7.sinif/unite_2.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/7.sinif/unite_3.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/7.sinif/unite_4.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/7.sinif/unite_5.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/8.sinif/unite_1.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/8.sinif/unite_2.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/8.sinif/unite_3.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/8.sinif/unite_4.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/8.sinif/unite_5.dart';
import 'package:dindefterim_sari/model/sinif.dart';
import 'package:dindefterim_sari/model/kademeler/ilkokul/ilkokul_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/ortaokul_ekranlari.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';

import '../screens/unitelerScreen.dart';
import '../model/kademeler/ortaokul/siniflar/5.sinif/unite_2.dart';
import '../model/kademeler/ortaokul/siniflar/5.sinif/unite_3.dart';
import '../model/kademeler/ortaokul/siniflar/5.sinif/unite_4.dart';
import '../model/kademeler/ortaokul/siniflar/5.sinif/unite_5.dart';

class Data {
  static final kademelerList = [
    Kamede(
      title: "İlkokul",
      kademelerNumber: '4',
      icon: Icons.favorite,
      kademeLink: const IlkokulEkranlari(),
    ),
    Kamede(
      title: "Ortaokul",
      kademelerNumber: '5-6-7-8',
      icon: LineIcons.heart,
      kademeLink: const OrtaokulEkranlari(),
    ),
    /*
    Kamede(
      title: "Lise",
      kademelerNumber: '9-10-11-12',
      icon: Icons.favorite,
      kademeLink: const LiseEkranlari(),
    ),
    Kamede(
      title: "LGS",
      kademelerNumber: '8',
      icon: LineIcons.heart,
      kademeLink: const sekizinciSinif(),
    ),

    */
  ];

  static final siniflarList = [
    Sinif(
      name: "4.Sınıf",
      speciality: "İlkokul",
      image: "assets/images/4_sinif.png",
      reviews: 80,
      reviewScore: 4,
      sinifLink: UnitelerScreen(
        sinifNo: '4.',
        uniteBir: const Dort_A_Birinci_Unite(),
        uniteIki: const Dort_B_Ikinci_Unite(),
        uniteUc: const Dort_C_Ucuncu_Unite(),
        uniteDort: const Dort_D_Dorduncu_Unite(),
        uniteBes: const Dort_E_Besinci_Unite(),
      ),
    ),
    Sinif(
      name: "5.Sınıf",
      speciality: "Ortaokul",
      image: "assets/images/5_sinif.png",
      reviews: 67,
      reviewScore: 5,
      sinifLink: UnitelerScreen(
        sinifNo: '5.',
        uniteBir: Bes_A_Birinci_Unite(),
        uniteIki: const Bes_B_Ikinci_Unite(),
        uniteUc: const Bes_C_Ucuncu_Unite(),
        uniteDort: const Bes_D_Dorduncu_Unite(),
        uniteBes: const Bes_E_Besinci_Unite(),
      ),
    ),
    Sinif(
      name: "6.Sınıf",
      speciality: "Ortaokul",
      image: "assets/images/6_sinif.png",
      reviews: 19,
      reviewScore: 3,
      sinifLink: UnitelerScreen(
        sinifNo: '6.',
        uniteBir: const Alti_A_Birinci_Unite(),
        uniteIki: const Alti_B_Ikinci_Unite(),
        uniteUc: const Alti_C_Ucuncu_Unite(),
        uniteDort: const Alti_D_Dorduncu_Unite(),
        uniteBes: const Alti_E_Besinci_Unite(),
      ),
    ),
    Sinif(
      name: "7.Sınıf",
      speciality: "Ortaokul",
      image: "assets/images/7_sinif.png",
      reviews: 19,
      reviewScore: 3,
      sinifLink: UnitelerScreen(
        sinifNo: '7.',
        uniteBir: const Yedi_A_Birinci_Unite(),
        uniteIki: const Yedi_B_Ikinci_Unite(),
        uniteUc: const Yedi_C_Ucuncu_Unite(),
        uniteDort: const Yedi_D_Dorduncu_Unite(),
        uniteBes: const Yedi_E_Besinci_Unite(),
      ),
    ),
    Sinif(
      name: "8.Sınıf",
      speciality: "Ortaokul",
      image: "assets/images/8_sinif.png",
      reviews: 9,
      reviewScore: 2,
      sinifLink: UnitelerScreen(
        sinifNo: '8.',
        uniteBir: const Sekizinci_A_Birinci_Unite(),
        uniteIki: const Sekizinci_B_Ikinci_Unite(),
        uniteUc: const Sekizinci_C_Ucuncu_Unite(),
        uniteDort: const Sekizinci_D_Dorduncu_Unite(),
        uniteBes: const Sekizinci_E_Besinci_Unite(),
      ),
    ),
    /*
    Sinif(
      name: "9.Sınıf",
      speciality: "Lise",
      image: "assets/images/9_sinif.png",
      reviews: 12,
      reviewScore: 9,
      sinifLink: const DokuzuncuSinif(),
    ),
     */
  ];
}
