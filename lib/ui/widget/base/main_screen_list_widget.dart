// finished: Ana Ekran Menu Barları Listesi

import 'package:dindefterim_sari/model/kademeler/ilkokul/ilkokul_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/lise/lise_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/ortaokul_ekranlari.dart';
import 'package:dindefterim_sari/ui/widget/button/stretch_buttons.dart';
import 'package:dindefterim_sari/ui/widget/card/app_logo_banner_card.dart';
import 'package:flutter/material.dart';

import '../../layout/no_ready_page.dart';
import 'diveder_page_widget.dart';

SingleChildScrollView mainScreenMenuListView(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children:  const <Widget>[
        SizedBox(
          height: 25.0,
        ),
        AppLogoBannerCard(),
        SizedBox(
          height: 55.0,
        ),
        StretchButton(
          kademeSayfasiLinki: IlkokulEkranlari(),
          kademeAdi: "İlkokul --aktf.değil",
        ),
        SizedBox(
          height: 10.0,
        ),
        StretchButton(
          kademeSayfasiLinki: OrtaokulEkranlari(),
          kademeAdi: "Ortaokul",
        ),
        SizedBox(
          height: 10.0,
        ),
        StretchButton(
          kademeSayfasiLinki: LiseEkranlari(),
          kademeAdi: "Lise --aktf.değil",
        ),
        SizedBox(
          height: 30.0,
        ),
        // todo: Sayfayı Ayıran Divider Widget
        DividerPageWidget(),
        SizedBox(
          height: 20.0,
        ),
         StretchButton(
          kademeSayfasiLinki: NoReadyPage(),
          kademeAdi: "Evraklar ---aktf.değil",
        ),
        SizedBox(
          height: 10.0,
        ),
        StretchButton(
          kademeSayfasiLinki: NoReadyPage(),
          kademeAdi: "Testler ---aktf.değil",
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    ),
  );
}
