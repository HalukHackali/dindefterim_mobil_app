import 'package:dindefterim_sari/layout/bottom_navigation_bar.dart';
import 'package:dindefterim_sari/layout/hazirlaniyor.dart';
import 'package:dindefterim_sari/okul/lise/lise_ekranlari.dart';
import 'package:dindefterim_sari/okul/ortaokul/ortaokul_ekranlari.dart';
import 'package:flutter/material.dart';

import 'package:dindefterim_sari/okul/ortaokul/siniflar/5.sinif/besinci_sinif.dart';

class IlkokulEkranlari extends StatefulWidget {
  const IlkokulEkranlari({
    Key? key,
  }) : super(key: key);

  @override
  _IlkokulEkranlariState createState() => _IlkokulEkranlariState();
}

class _IlkokulEkranlariState extends State<IlkokulEkranlari> {
  int _aktifIcerikNo = 0;
  late List<Widget> _icerikler;

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
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[600],
          title: const Text("İlkokul"),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        const Text(
                          "Sınıflar",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black87,
                          ),
                        ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SinifCardWidget(
                        sinifAdi: "4",
                        sinifAdiYazi: "4.Sınıf",
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                    ],
                  ), // todo: SinifWidget() aşağıda tanımlandı düzenlenecek ve her widgeta özel yapılacak.
                  const SizedBox(
                    height: 15.0,
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, left: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 3.0,
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        const Icon(Icons.description_sharp),
                        const SizedBox(
                          width: 15.0,
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
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 3.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 125.0,
                  ),
                  seritBantCard("Ortaokul", OrtaokulEkranlari()),
                  const SizedBox(
                    height: 10.0,
                  ),
                  seritBantCard("Lise", LiseEkranlari()),
                  const SizedBox(
                    height: 30.0,
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

class SinifCardWidget extends StatelessWidget {
  final String? sinifAdi;
  final String? sinifAdiYazi;

  const SinifCardWidget(
      {Key? key, required this.sinifAdi, required this.sinifAdiYazi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Hazirlaniyor()));
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: const Color(0xff4C7ABA),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color(0xffE207C7),
                  ),
                  child: Center(
                    child: Text(
                      sinifAdi!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Container(
              width: 80,
              height: 28,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Color(0xffFEDB22),
              ),
              child: const Center(
                  child: Text(
                "İlkokul",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 108),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 32,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
                color: Color(0xff263238),
              ),
              child: Center(
                  child: Text(
                sinifAdiYazi!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
