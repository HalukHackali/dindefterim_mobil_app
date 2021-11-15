import 'package:flutter/material.dart';


import 'layout/app_bar_layout.dart';
import 'layout/bottom_navigation_bar.dart';
import 'layout/hazirlaniyor.dart';
import 'okul/ilkokul/ilkokul_ekranlari.dart';
import 'okul/lise/lise_ekranlari.dart';
import 'okul/ortaokul/ortaokul_ekranlari.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 25.0,
                  ),
                  const SinifWidget(),
                  const SizedBox(
                    height: 55.0,
                  ),
                  seritBantCard("İlkokul", IlkokulEkranlari()),
                  const SizedBox(
                    height: 10.0,
                  ),
                  seritBantCard("Ortaokul", OrtaokulEkranlari()),
                  const SizedBox(
                    height: 10.0,
                  ),
                  seritBantCard("Lise", LiseEkranlari()),
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
                  seritBantCard("Dökümanlar", Hazirlaniyor()),
                  const SizedBox(
                    height: 10.0,
                  ),
                  seritBantCard("Testler", Hazirlaniyor()),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ],

          ),
        ),
        bottomNavigationBar: BottomNavBarWidget(aktifIcerikNo: _aktifIcerikNo),
      ),
    );
  }

  // OrtaokulEkranlari()

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



class SinifWidget extends StatelessWidget {
  const SinifWidget({
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
                          image: AssetImage("assets/logo.png"),
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
