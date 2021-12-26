part of '/ui/theme/colors/color_manager.dart';

class DarkColors implements IColors {
  @override
  final _AppColors colors = _AppColors();

  @override
  ColorScheme? colorScheme;

  @override
  Brightness? brightness;

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
  Color? pinkCustom;

  DarkColors() {
    appBarColor = colors.darkGrey;
    scaffoldBackgroundColor = colors.darkGrey;
    tabBarColor = colors.darkBlue;
    tabbarNormalColor = colors.lighterGrey;
    tabbarSelectedColor = colors.darkBlue;
    colorScheme = const ColorScheme.light()
        .copyWith(onPrimary: colors.darkBlue, onSecondary: colors.darkGrey);
    brightness = Brightness.dark;
  }


}