import 'package:dindefterim_sari/features/okul/model/kademeler/ilkokul/ilkokul_ekranlari.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/lise/lise_ekranlari.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/ortaokul/ortaokul_ekranlari.dart';
import 'package:flutter/material.dart';

import 'layout/app_bar_layout.dart';
import 'layout/bottom_navigation_bar.dart';
import 'layout/drawer_menu.dart';
import 'layout/hazirlaniyor.dart';





class AnaSayfaView extends StatefulWidget {
  const AnaSayfaView({
    Key? key,
  }) : super(key: key);

  @override
  State<AnaSayfaView> createState() => _AnaSayfaViewState();
}

class _AnaSayfaViewState extends State<AnaSayfaView> {
  int _aktifIcerikNo = 0;
  //late List<Widget> _icerikler;

//todo: Henüz AnaSayfa ve Ayarlar Yok
  // @override
  // void initState() {
  //   super.initState();
  //
  //   _icerikler = [AnaSayfa(), Ayarlar(), Kullanıcı()];
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: anaEkranMenuListView(context),
        drawer: const DrawerWidget(),
        bottomNavigationBar: BottomNavBarWidget(aktifIcerikNo: _aktifIcerikNo),
      ),
    );
  }

  // finished: Ana Ekran Menu Barları Listesi
  ListView anaEkranMenuListView(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: <Widget>[
            const SizedBox(
              height: 25.0,
            ),
            const IsimLogoCard(),
            const SizedBox(
              height: 55.0,
            ),
            seritBantCard("İlkokul ---aktf.değil", IlkokulEkranlari()),
            const SizedBox(
              height: 10.0,
            ),
            seritBantCard("Ortaokul", OrtaokulEkranlari()),
            const SizedBox(
              height: 10.0,
            ),
            seritBantCard("Lise --- aktf.değil", LiseEkranlari()),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    elevation: 3.0,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 3.0,
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Icon(Icons.description_sharp),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Material(
                    elevation: 3.0,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[],
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                      ),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 3.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            seritBantCard("Evraklar --- aktf.değil", Hazirlaniyor()),
            const SizedBox(
              height: 10.0,
            ),
            seritBantCard("Testler --- aktf.değil", Hazirlaniyor()),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ],
    );
  }

  // finished: Bar Şablonu
  Widget seritBantCard(String kademeAdi, Widget kademeSayfasiLinki) {
    return Material(
      child: Container(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => kademeSayfasiLinki));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Text(
                        kademeAdi,
                        style: const TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white70),
                      ),
                    ),
                    const SizedBox(
                      width: 55.0,
                    ),
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 40.0,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff263238),
              Color(0xff263238),
            ],
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 40.0,
        height: 50.0,
      ),
    );
  }
}

// finished: Ana Sayfa Logo App Name Card
class IsimLogoCard extends StatelessWidget {
  const IsimLogoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20.0),
      elevation: 7.0,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          scale: 1.0,
                          image: AssetImage("assets/app_logo/logo.png"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "DinDefterim",
                      style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(2.0),
              child: Text(
                "Din Kültürü ve Ahlak Bilgisi",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.amber,
              Colors.yellowAccent,
            ],
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 40.0,
        height: 120.0,
      ),
    );
  }
}
