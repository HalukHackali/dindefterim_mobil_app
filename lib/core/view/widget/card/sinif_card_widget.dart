import 'package:flutter/material.dart';

class SinifCardWidget extends StatelessWidget {
  final String? sinifAdi;
  final String? sinifAdiYazi;
  final Widget sinifLink;
  final String? kademeAdi;

  SinifCardWidget(
      {required this.sinifAdi,
      required this.sinifAdiYazi,
      required this.sinifLink,
      required this.kademeAdi});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => sinifLink));
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Theme.of(context).colorScheme.background,
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
                    color: Color(0xffE207C7),
                  ),
                  child: Center(
                    child: Text(
                      sinifAdi!,
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          color:
                              Theme.of(context).colorScheme.secondaryVariant),
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
              child: Center(
                child: Text(
                  kademeAdi!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
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
