// finished: Ana Ekran Menu Barları Listesi

import 'package:dindefterim_sari/model/kademeler/ilkokul/ilkokul_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/lise/lise_ekranlari.dart';
import 'package:dindefterim_sari/model/kademeler/ortaokul/ortaokul_ekranlari.dart';
import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:dindefterim_sari/ui/widget/button/stretch_buttons.dart';
import 'package:dindefterim_sari/ui/widget/card/app_logo_banner_card.dart';
import 'package:flutter/material.dart';

import 'diveder_page_widget.dart';

SingleChildScrollView mainScreenMenuListView(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children:  <Widget>[
        const SizedBox(
          height: 25.0,
        ),
        const AppLogoBannerCard(),
        const SizedBox(
          height: 55.0,
        ),
        StretchButton(
          kademeSayfasiLinki: IlkokulEkranlari(),
          kademeAdi: "İlkokul --aktf.değil",
        ),
        const SizedBox(
          height: 10.0,
        ),
        const StretchButton(
          kademeSayfasiLinki: OrtaokulEkranlari(),
          kademeAdi: "Ortaokul",
        ),
        const SizedBox(
          height: 10.0,
        ),
        const StretchButton(
          kademeSayfasiLinki: const LiseEkranlari(),
          kademeAdi: "Lise --aktf.değil",
        ),
        const SizedBox(
          height: 30.0,
        ),
        // todo: Sayfayı Ayıran Divider Widget
        const DividerPageWidget(),
        const SizedBox(
          height: 20.0,
        ),
        const StretchButton(
          kademeSayfasiLinki: NoReadyPage(),
          kademeAdi: "Evraklar ---aktf.değil",
        ),
        const SizedBox(
          height: 10.0,
        ),
        const StretchButton(
          kademeSayfasiLinki: const NoReadyPage(),
          kademeAdi: "Testler ---aktf.değil",
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    ),
  );
}
