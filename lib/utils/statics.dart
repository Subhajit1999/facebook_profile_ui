import 'package:facebook_profile_ui/configs/size_config.dart';
import 'package:flutter/material.dart';

class AppStatics {
  // Style Essentials
  static const String primaryFont = "Helvetica";
  // static const String secondaryFont = "Roboto";

  // Theme Font sizes
  static double largeHeadlineSize = 3.75 * SizeConfig.textMultiplier;
  static double bodyTextRegularSize = 1.75 * SizeConfig.textMultiplier;
  static double bodyTextMediumSize = 2 * SizeConfig.textMultiplier;

  // Home page
  static double mainToolbarSize = 7 * SizeConfig.heightMultiplier;

  // Static methods
  static String convertNumString(String num) {
    String trimmed = num.replaceAll('+', '').replaceAll('-', '').replaceAll('/P', '');
    double? toDouble = double.tryParse(trimmed);
    int? toInt = toDouble!.toInt();
    return '${num.contains('+')? '+' : num.contains('-')? '-' : ''}${toDouble==toInt? toInt : toDouble}';
  }
}