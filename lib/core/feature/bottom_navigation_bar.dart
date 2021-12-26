import 'package:dindefterim_sari/screens/layout/no_ready_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_confige.dart';
import 'dart:math' as math;

import 'app_screen.dart';

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
      height: getRelativeHeight(0.1),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: getRelativeHeight(0.07),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ApprScreen()),
                              );
                            },
                            child: Icon(
                              itemIcons[0],
                              color: selectedIndex == 0
                                  ? Color(0xff46BDFA)
                                  : kLightTextColor,
                              size: getRelativeWidth(0.07),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NoReadyPage()),
                              );
                            },
                            child: Icon(
                              itemIcons[1],
                              color: selectedIndex == 1
                                  ? Color(0xff46BDFA)
                                  : kLightTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 3),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NoReadyPage()),
                              );
                            },
                            child: Icon(
                              itemIcons[2],
                              color: selectedIndex == 2
                                  ? Color(0xff46BDFA)
                                  : kLightTextColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NoReadyPage()),
                              );
                            },
                            child: Icon(
                              itemIcons[3],
                              color: selectedIndex == 3
                                  ? Color(0xff46BDFA)
                                  : kLightTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Transform.rotate(
                angle: -math.pi / 4,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ApprScreen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 25,
                          offset: const Offset(0, 5),
                          color: Color(0xff46BDFA).withOpacity(0.75),
                        )
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          kPrimarylightColor,
                          Color(0xff46BDFA),
                        ],
                      ),
                    ),
                    height: getRelativeWidth(0.135),
                    width: getRelativeWidth(0.135),
                    child: Center(
                      child: Transform.rotate(
                        angle: math.pi / 4,
                        child: Icon(
                          centerIcon,
                          color: Colors.white,
                          size: getRelativeWidth(0.07),
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
