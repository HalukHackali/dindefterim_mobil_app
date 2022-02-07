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
          //width: getRelativeWidth(0.94),
          width: UIHelper.getAppBannerWidgetWidth(),
          height: UIHelper.getAppBannerWidgetHeight(),
          //height: getRelativeHeight(0.22),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: UIHelper.getAppBannerContainerWidgetHeight(),
                height: UIHelper.getAppBannerContainerWidgetWidth(),
                //width: getRelativeWidth(0.88),
                //height: getRelativeHeight(0.17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 30,
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
                      //EdgeInsets.symmetric(horizontal: getRelativeWidth(0.04)),
                      const EdgeInsets.all(1),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        // alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: UIHelper.getAppLogoWidgetHeight(),
                            width: UIHelper.getAppLogoWidgetWidth(),
                            //height: getRelativeHeight(0.12),
                            //width: UIHelper.getAppLogoWidgetHeight(),
                            child: Image.asset(
                              "assets/app_logo/logo.png",
                              scale: 0.8,
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(width: getRelativeWidth(0.035)),
                      /* Flexible(
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
                                fontSize: getRelativeWidth(0.068),
                              ),
                            ),
                            SizedBox(height: getRelativeHeight(0.0010)),
                            Row(
                              children: [
                                Flexible(
                                  child: Text("Din Kültürü ve Ahlak Bilgisi",
                                      style: TextStyle(
                                          fontSize: getRelativeWidth(0.034),
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(width: getRelativeWidth(0.02)),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(15)),
                                  padding:
                                      EdgeInsets.all(getRelativeWidth(0.012)),
                                  child: SizedBox(
                                    height: getRelativeWidth(0.10),
                                    width: getRelativeWidth(0.10),
                                    child:
                                        Image.asset("assets/images/world.png"),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                      */
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getRelativeHeight(0.028),
                  horizontal: getRelativeWidth(0.070)),
              child: SizedBox(
                height: UIHelper.getAppIconWidgetHeight(),
                  //height: getRelativeWidth(0.06),
                  //width: getRelativeWidth(0.06),
                  child: Image.asset("assets/images/send.png")),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getRelativeHeight(0.01),
                  horizontal: getRelativeWidth(0.04)),
              child: SizedBox(
                  height: UIHelper.getAppIconWidgetHeight(),
                //height: getRelativeWidth(0.08),
                  //width: getRelativeWidth(0.08),
                  child: Image.asset("assets/images/pencil.png")),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getRelativeHeight(0.001),
                  horizontal: getRelativeWidth(0.01)),
              child: SizedBox(
                height: UIHelper.getAppIconWidgetHeight(),
                //height: getRelativeWidth(0.11),
                //width: getRelativeWidth(0.11),
                child: Image.asset("assets/images/book_1.png"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
