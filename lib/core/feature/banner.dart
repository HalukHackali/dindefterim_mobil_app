import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_confige.dart';

class MainScreenBanner extends StatelessWidget {
  const MainScreenBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: getRelativeWidth(0.94),
          height: getRelativeHeight(0.22),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: getRelativeWidth(0.88),
                height: getRelativeHeight(0.17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 40,
                      offset: Offset(0, 15),
                      color: kPrimaryDarkColor,
                    )
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffFEA741),
                      Color(0xffFFCA8C),
                    ],
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: getRelativeWidth(0.03)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: getRelativeWidth(0.25),
                            width: getRelativeWidth(0.25),
                            child: Image.asset("assets/app_logo/logo.png"),
                          ),

                        ],
                      ),
                      SizedBox(width: getRelativeWidth(0.012)),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dindefterim",
                              style: TextStyle(
                                //color: Colors.black,
                                color: const Color(0xff3465A4),
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.065),
                              ),
                            ),
                            SizedBox(height: getRelativeHeight(0.02)),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    "Din Kültürü ve Ahlak Bilgisi  Özetler,  Resimler,  Videolar,  Testler",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.85),
                                        fontSize: getRelativeWidth(0.033)),
                                  ),
                                ),
                                SizedBox(width: getRelativeWidth(0.03)),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(15)),
                                  padding:
                                      EdgeInsets.all(getRelativeWidth(0.012)),
                                  child: Icon(
                                    Icons.menu_book_sharp,
                                    color: Color(0xff3465A4),
                                    size: getRelativeWidth(0.080),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: getRelativeWidth(0.12),
              width: getRelativeWidth(0.12),
              child: Image.asset("assets/images/flowers_1.png"),
            ),
          ),
        ),

        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getRelativeHeight(0.01),
                  horizontal: getRelativeWidth(0.07)),
              child: SizedBox(
                  height: getRelativeWidth(0.08),
                  width: getRelativeWidth(0.08),
                  child: Image.asset("assets/images/flowers_3.png")),
            ),
          ),
        )
      ],
    );
  }
}
