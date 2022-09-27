import 'package:facebook_profile_ui/theme/colors.dart';
import 'package:facebook_profile_ui/utils/statics.dart';
import 'package:flutter/material.dart';

// Default/Light theme
class AppTheme {
  AppTheme._();

  // App Light Theme
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    primaryColor: AppColors.primaryColor,
    accentColor: AppColors.accentColor,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    textTheme: lightTextTheme,
    primaryIconTheme: _mainIconThemeLight,
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.black.withOpacity(0)),
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline4: _boldLight,
    subtitle1: _mediumLight,
    bodyText1: _bodyTextRegularLight,
    // button: _buttonTextLight,
  );

  // Text Styles (Light Theme)
  static final TextStyle _boldLight = TextStyle(
    color: AppColors.secondaryColor,
    fontSize: AppStatics.largeHeadlineSize,
    fontFamily: AppStatics.primaryFont,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle _mediumLight = TextStyle(
    color: AppColors.secondaryColor,
    fontFamily: AppStatics.primaryFont,
    fontSize: AppStatics.bodyTextMediumSize,
  );

  static final TextStyle _bodyTextRegularLight = TextStyle(
    color: AppColors.accentColor,
    fontSize: AppStatics.bodyTextRegularSize,
    fontFamily: AppStatics.primaryFont,
    fontWeight: FontWeight.w300
  );

  // static final TextStyle _buttonTextLight = TextStyle(
  //   color: Colors.white,
  //   fontSize: AppStatics.buttonTextSize,
  //   fontFamily: AppStatics.defaultFont,
  //   letterSpacing: 1,
  // );

  static final IconThemeData _mainIconThemeLight = IconThemeData(
    color: AppColors.lightGreyColor,
  );
}