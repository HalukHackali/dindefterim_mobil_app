import 'package:flutter/material.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/ilkokul/ilkokul_ekranlari.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/lise/lise_ekranlari.dart';
import 'package:dindefterim_sari/features/okul/model/kademeler/ortaokul/ortaokul_ekranlari.dart';
import 'layout/app_bar_layout.dart';
import 'layout/bottom_navigation_bar.dart';
import 'layout/drawer_menu.dart';
import 'layout/no_ready_page.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final int _activeContentNo = 0;
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
        appBar: customBuildAppBar(context),
        body: mainScreenMenuListView(context),
        drawer: const DrawerWidget(),
        bottomNavigationBar: BottomNavBarWidget(aktifIcerikNo: _activeContentNo),
      ),
    );
  }

  // finished: Ana Ekran Menu Barları Listesi
  ListView mainScreenMenuListView(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: <Widget>[
            const SizedBox(
              height: 25.0,
            ),
            const AppLogoBannerCard(),
            const SizedBox(
              height: 55.0,
            ),
            greyButton("İlkokul ---aktf.değil", IlkokulEkranlari()),
            const SizedBox(
              height: 10.0,
            ),
            greyButton("Ortaokul", OrtaokulEkranlari()),
            const SizedBox(
              height: 10.0,
            ),
            greyButton("Lise --- aktf.değil", LiseEkranlari()),
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
            greyButton("Evraklar --- aktf.değil", NoReadyPage()),
            const SizedBox(
              height: 10.0,
            ),
            greyButton("Testler --- aktf.değil", NoReadyPage()),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ],
    );
  }

// finished: Bar Şablonu
  Widget greyButton(String kademeAdi, Widget kademeSayfasiLinki) {
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
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                    const SizedBox(
                      width: 55.0,
                    ),
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.keyboard_arrow_right,
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
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).cardColor,
              Theme.of(context).cardColor,
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
class AppLogoBannerCard extends StatelessWidget {
  const AppLogoBannerCard({
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
                  Expanded(
                    flex: 2,
                    child: Text(
                      "DinDefterim",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                "Din Kültürü ve Ahlak Bilgisi",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.pinkAccent),
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
