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

  LightColors() {
    appBarColor = colors.white;
    scaffoldBackgroundColor = colors.white;
    tabBarColor = colors.darkBlue;
    tabbarNormalColor = colors.darkerGrey;
    tabbarSelectedColor = colors.darkBlue;
    colorScheme = const ColorScheme.light().copyWith(
        onPrimary: colors.hardGrey,
        onSecondary: colors.hardGrey,
        onSurface: colors.mediumGreyBold);
    brightness = Brightness.light;
  }
}