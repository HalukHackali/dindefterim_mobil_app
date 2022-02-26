import 'package:dindefterim_sari/core/model/kademe.dart';
import 'package:dindefterim_sari/core/model/sinif.dart';
import 'package:dindefterim_sari/model/kademeler/ilkokul/4.sinif/dorduncu_sinif.dart';
import 'package:dindefterim_sari/model/kademeler/ilkokul/ilkokul_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/lise/lise_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/lise/siniflar/9.sinif/dokuzuncu_sinif.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/ortaokul_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/5.sinif/besinci_sinif.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/6.sinif/altincii_sinif.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/7.sinif/yedinci_sinif.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/siniflar/8.sinif/sekizinci_sinif.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';

class Data {
  static final kademelerList = [
    Kamede(
      title: "İlkokul",
      kademelerNumber: '4',
      icon: Icons.favorite,
      kademeLink: IlkokulEkranlari(),
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
      sinifLink: const DorduncuSinif(),
    ),
    Sinif(
      name: "5.Sınıf",
      speciality: "Ortaokul",
      image: "assets/images/5_sinif.png",
      reviews: 67,
      reviewScore: 5,
      sinifLink: const besinciSinif(),
    ),
    Sinif(
      name: "6.Sınıf",
      speciality: "Ortaokul",
      image: "assets/images/6_sinif.png",
      reviews: 19,
      reviewScore: 3,
      sinifLink: const altincinciSinif(),
    ),
    Sinif(
      name: "7.Sınıf",
      speciality: "Ortaokul",
      image: "assets/images/7_sinif.png",
      reviews: 19,
      reviewScore: 3,
      sinifLink: const yedinciSinif(),
    ),
    Sinif(
      name: "8.Sınıf",
      speciality: "Ortaokul",
      image: "assets/images/8_sinif.png",
      reviews: 9,
      reviewScore: 2,
      sinifLink: const sekizinciSinif(),
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
