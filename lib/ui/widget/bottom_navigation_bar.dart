import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/constants.dart';
import '../../config/size_confige.dart';
import 'dart:math' as math;

import '../../screens/app_screen.dart';

class BottomNavigation extends StatelessWidget {
  final List<IconData> itemIcons;
  final IconData centerIcon;
  final int selectedIndex;
  final Function(int) onItemPressed;
  const BottomNavigation({
    Key? key,
    required this.itemIcons,
    required this.centerIcon,
    required this.selectedIndex,
    required this.onItemPressed,
  })  : assert(itemIcons.length != 3, "Item must equal 4"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: getRelativeHeight(0.19),
      height: ScreenUtil().orientation == Orientation.portrait ? getRelativeHeight(0.07) : getRelativeHeight(0.19),
      //width: getRelativeHeight(0.010),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: getRelativeHeight(0.10),
              color: Colors.white,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getRelativeWidth(0.1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Builder(
                            builder: (context) => IconButton(
                              //icon: const Icon(Icons.menu),
                              icon: const Icon(Icons.email_outlined),
                              color: selectedIndex == 1
                                  ? const Color(0xff46BDFA)
                                  : kLightTextColor,
                              tooltip: 'Menüyü Aç',
                              onPressed: () {
                                  //Scaffold.of(context).openDrawer();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                    Text('İletişim : bilgi@dindefterim.com'),
                                  ),
                                );
                              }
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Web sitemiz için www.dindefterim.com adresini ziyaret edebilirsiniz.'),
                                  ),
                              );
                            },
                            child: Icon(
                              Icons.info_outline
                              ,
                              //itemIcons[1],
                              color: selectedIndex == 1
                                  ? const Color(0xff46BDFA)
                                  : kLightTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                   // const Spacer(flex: 3),
                 /*  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Bu Sayfa Henüz Aktif Değil!')));
                            },
                            child: Icon(
                              itemIcons[2],
                              color: selectedIndex == 2
                                  ? const Color(0xff46BDFA)
                                  : kLightTextColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('Bu Sayfa Henüz Aktif Değil!')));
                            },
                            child: Icon(
                              itemIcons[3],
                              color: selectedIndex == 3
                                  ? const Color(0xff46BDFA)
                                  : kLightTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),*/
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Transform.rotate(
                angle: -math.pi / 4,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  const AppScreen()),
                    );
                  },
                  child: Container(

                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 25,
                          offset: const Offset(0, 8),
                          color: const Color(0xff46BDFA).withOpacity(0.75),
                        )
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          kPrimaryLightColor,
                          Color(0xff46BDFA),
                        ],
                      ),
                    ),
                   height: UIHelper.getMainButtontHeight(),
                    width: UIHelper.getMainButtonWidth(),
                    //height: getRelativeWidth(0.135),

                    //width: getRelativeWidth(0.135),
                    child: Center(
                      child: Transform.rotate(
                        angle: math.pi / 4,
                        child: Icon(
                          centerIcon,
                          color: Colors.white,
                          //size: getRelativeWidth(0.07),
                          size: UIHelper.getAppIconWidgetHeight(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
