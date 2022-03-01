import 'package:dindefterim_sari/config/constants.dart';
import 'package:dindefterim_sari/config/size_confige.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sinif_Card_Widget extends StatelessWidget {
  final String? sinifAdi;
  final Widget sinifLink;
  final String? kademeAdi;
  final String? resim;
  final Color? sinifRenk;
  final Color? sinifRenk_2;
  final Color? sinifRenk_3;
  final Color? arkaPlanRenk;

  const Sinif_Card_Widget(
      {required this.sinifAdi,
      required this.sinifLink,
      required this.kademeAdi,
      required this.resim,
      this.sinifRenk,
      this.sinifRenk_2,
      this.sinifRenk_3,
      this.arkaPlanRenk});

  @override
  Widget build(BuildContext context) {
    final cardWidth = getRelativeWidth(0.48);

    return SizedBox(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => sinifLink));
            },
            child: SizedBox(
              width: cardWidth,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration:  BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: const Radius.circular(25),
                                  ),
                                  color: arkaPlanRenk!,
                                ),
                                height: getRelativeHeight(0.14),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        width: getRelativeHeight(0.13),
                                        height: getRelativeHeight(0.13),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 15,
                                            color: sinifRenk!.withOpacity(0.6),
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: getRelativeHeight(0.11),
                                        height: getRelativeHeight(0.11),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 15,
                                              color: sinifRenk_2!
                                                  .withOpacity(0.25)),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        width: getRelativeHeight(0.11),
                                        height: getRelativeHeight(0.11),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 15,
                                              color: const Color(0xffB8ACFF)
                                                  .withOpacity(0.17)),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                              width: cardWidth,
                              height: getRelativeHeight(0.19),
                              child: Image.asset(resim!)),
                        ],
                      ),
                      Container(
                        height: getRelativeHeight(0.12),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: getRelativeHeight(0.02),
                              horizontal: getRelativeWidth((0.05))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                sinifAdi!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kHardTextColor,
                                    fontSize: getRelativeWidth(0.041)),
                              ),
                              SizedBox(height: getRelativeHeight(0.005)),
                              Text(
                                kademeAdi!,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: getRelativeWidth(0.032)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: getRelativeHeight(0.09))
                            .copyWith(left: cardWidth * 0.735),
                        child: Container(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              offset: Offset(0, 3),
                              color: Colors.black26,
                            )
                          ], color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(getRelativeWidth(0.015)),
                          child: Icon(
                            FontAwesomeIcons.bookOpen,
                            color: const Color(0xff586191),
                            size: getRelativeWidth(0.055),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: getRelativeWidth(0.04))
        ],
      ),
    );
  }
}
