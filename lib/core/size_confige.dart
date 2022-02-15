import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SizeConfig {
  static double screenWidth = 200.0;
  static double screenHeight = 200.0;

  static initSize(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
  }
}

double getRelativeHeight(double percentage) {
  return percentage * SizeConfig.screenHeight;
}

double getRelativeWidth(double percentage) {
  return percentage * SizeConfig.screenWidth;
}


class UIHelper {
  UIHelper._();
//////////////////////////////////////////// CONTAINER BANNER
  static double getAppBannerContainerWidgetHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.45.sh : 0.95.sw;
  }
  static double getAppBannerContainerWidgetWidth(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.95.sw;
  }
///////////////////////////////////////////// BANNER
  static double getAppBannerWidgetHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.20.sh : 0.12.sw;
  }
  static double getAppBannerWidgetWidth(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.80.sh : 0.95.sw;
  }
/////////////////////////////////////////// BANNER ICONS
  static double getAppIconWidgetHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.05.sh : 0.05.sw;
  }
  /////////////////////////////////////////////// BANNER LOGO
  static double getAppLogoWidgetHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.12.sh : 0.95.sw;
  }
  static double getAppLogoWidgetWidth(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.42.sh : 0.94.sw;
  }
//////////////////////////////////////////////// MAIN SCREEN SIZE BOX
  static double getAppSizeBoxWidgetHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.02.sh : 0.02.sh;
  }
////////////////////////////////////////////////// BANNER CARD
  static double getAppCardWidgetHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.12.sh : 0.12.sw;
  }
  static double getAppCardWidgetWidth(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.42.sh : 0.90.sw;
  }

////////////////////////////////////////////////// BANNER CARD
  static double getMainButtontHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.20.sh : 0.07.sw;
  }
  static double getMainButtonWidth(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.07.sh : 0.07.sw;
  }
////////////////////////////////////////////////// BOTTOM BAR
  static double getMainBottomBarHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.20.sh : 0.25.sw;
  }
  static double getMainBottomBarWidth(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.07.sh : 0.10.sw;
  }

////////////////////////////////////////////////// SINIFLAR BAŞLIK
  static double getSiniflarTitleHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.04.sh : 0.03.sw;
  }
  static double getSiniflarTitleWidth(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.07.sh : 0.10.sw;
  }

}