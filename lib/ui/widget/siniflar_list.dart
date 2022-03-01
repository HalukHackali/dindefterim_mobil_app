import 'package:dindefterim_sari/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants.dart';
import '../../config/size_confige.dart';

class SiniflarList extends StatelessWidget {
  const SiniflarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: getRelativeHeight(0.45),
      height: ScreenUtil().orientation == Orientation.portrait
          ? getRelativeHeight(0.45)
          : getRelativeHeight(0.85),
      child: ListView.builder(
        itemCount: Data.siniflarList.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: getRelativeWidth(0.035)),
        itemBuilder: (context, index) {
          final sinif = Data.siniflarList[index];
          final color = kCategoriesSecondryColor[
              (kCategoriesSecondryColor.length - index - 1)];
          final circleColor = kCategoriesPrimaryColor[
              (kCategoriesPrimaryColor.length - index - 1)];
          //final cardWidth = getRelativeWidth(0.48);
          final cardWidth = ScreenUtil().orientation == Orientation.portrait
              ? getRelativeWidth(0.48)
              : 0.25.sw;
          //final cardheight = getRelativeWidth(0.78);
          final cardheight = ScreenUtil().orientation == Orientation.portrait
              ? getRelativeWidth(0.78)
              : 0.85.sw;
          final link = Data.siniflarList[index];
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => link.sinifLink));
                },
                child: SizedBox(
                  width: cardWidth,
                  height: cardheight,
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
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                      ),
                                      color: color,
                                    ),
                                    height: getRelativeHeight(0.14),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            width: getRelativeHeight(0.13),
                                            height: cardheight,
                                            //height: getRelativeHeight(0.13),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 15,
                                                  color: circleColor
                                                      .withOpacity(0.6)),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: getRelativeHeight(0.11),
                                            height: cardheight,
                                            //height: getRelativeHeight(0.11),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 15,
                                                  color: circleColor
                                                      .withOpacity(0.25)),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: getRelativeHeight(0.11),
                                            height: cardheight,
                                            //height: getRelativeHeight(0.11),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 15,
                                                  color: circleColor
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
                                //height: cardheight,
                                height: getRelativeHeight(0.19),
                                child: Image.asset(sinif.image),
                              ),
                            ],
                          ),
                          Container(
                            //height: getRelativeHeight(0.16),
                            height:
                                ScreenUtil().orientation == Orientation.portrait
                                    ? getRelativeHeight(0.15)
                                    : getRelativeHeight(0.25),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: getRelativeHeight(0.008),
                                  horizontal: getRelativeWidth((0.05))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      sinif.name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kHardTextColor,
                                        //fontSize: getRelativeWidth(0.065)),
                                        fontSize: ScreenUtil().orientation ==
                                                Orientation.portrait
                                            ? getRelativeHeight(0.045)
                                            : getRelativeHeight(0.065),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: getRelativeHeight(0.005)),
                                  Expanded(
                                    child: Text(
                                      sinif.speciality,
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        //fontSize: getRelativeWidth(0.052)),
                                        fontSize: ScreenUtil().orientation ==
                                                Orientation.portrait
                                            ? getRelativeHeight(0.032)
                                            : getRelativeHeight(0.055),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                      /*
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: getRelativeHeight(0.04))
                                    .copyWith(left: cardWidth * 0.8),
                            child: Container(
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                  color: Colors.black26,
                                ),
                              ], color: Colors.red, shape: BoxShape.circle),
                              padding: EdgeInsets.all(getRelativeWidth(0.015)),
                              child: Icon(
                                FontAwesomeIcons.bookOpen,
                                color: color,
                                size: getRelativeWidth(0.055),
                              ),
                            ),
                          ),
                        ),
                      ),

                      */
                    ],
                  ),
                ),
              ),
              SizedBox(width: getRelativeWidth(0.04))
            ],
          );
        },
      ),
    );
  }
}
