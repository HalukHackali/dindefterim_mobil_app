part of '../color_manager.dart';

class LightColors implements IColors {
  @override
  final _AppColors colors = _AppColors();

  @override
  ColorScheme? colorScheme;
  @override
  Color? appBarColor;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? tabBarColor;

  @override
  Color? tabbarNormalColor;

  @override
  Color? tabbarSelectedColor;

  @override
  Brightness? brightness;

  @override
  Color? pinkCustom;

  LightColors() {
    appBarColor = colors.darkBlue;
    scaffoldBackgroundColor = colors.white;
    tabBarColor = colors.darkBlue;
    tabbarNormalColor = colors.darkerGrey;
    tabbarSelectedColor = colors.white;
    brightness = Brightness.light;
    pinkCustom = colors.pinkCustom;
    colorScheme = const ColorScheme.light().copyWith(
      primary: colors.primaryLogo,
      onPrimary: colors.hardGrey,
      primaryVariant: colors.appYellow,
      secondary: colors.appYellow,
      onSecondary: colors.hardGrey,
      secondaryVariant: colors.white,
      onSurface: colors.mediumGrey,
      onBackground: colors.mediumGreyBold,
      onError: colors.mediumGrey,
      background: colors.lightBlue,
      surface: colors.pinkCustom,
    );
  }
}

// fixme: BURADAN DEVAM ET RENKLERİ AYARLA
/*
const ColorScheme.light({
this.primary = const Color(0xff6200ee),
this.primaryVariant = const Color(0xff3700b3),
this.secondary = const Color(0xff03dac6),
this.secondaryVariant = const Color(0xff018786),
this.surface = Colors.white,
this.background = Colors.white,
this.error = const Color(0xffb00020),
this.onPrimary = Colors.white,
this.onSecondary = Colors.black,
this.onSurface = Colors.black,
this.onBackground = Colors.black,
this.onError = Colors.white,
this.brightness = Brightness.light,
})
*/
