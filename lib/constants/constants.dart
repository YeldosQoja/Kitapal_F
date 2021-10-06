import 'package:flutter/material.dart';
import 'dart:io' show Platform;

abstract class AppColors {
  static final backgroundColor = Color.fromRGBO(255, 255, 255, 1);
  static final primary = Color.fromRGBO(142, 41, 118, 1);
  static final secondary = Color.fromRGBO(141, 41, 118, 0.1);
  static final text1 = Color.fromRGBO(51, 51, 51, 1);
  static final text2 = Color.fromRGBO(119, 119, 119, 1);
  static final green = Color.fromRGBO(3, 133, 124, 1);
  static final yellow = Color.fromRGBO(255, 153, 0, 1);
  static final red = Color.fromRGBO(239, 37, 37, 1);
}

final String fontFamily = Platform.isAndroid ? "Manrope" : 'SF Pro Display';

abstract class TextStyles {
  static final h1 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 30,
      color: AppColors.text1,
      fontWeight: FontWeight.w400);
  static final h2 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 24,
      color: AppColors.backgroundColor,
      fontWeight: FontWeight.w600);
  static final h3 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 22,
      color: AppColors.text1,
      fontWeight: FontWeight.w500);
  static final h4 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 19,
      color: AppColors.text1,
      fontWeight: FontWeight.w500);
  static final menuItem = TextStyle(
      fontFamily: fontFamily,
      fontSize: 22,
      color: AppColors.text1,
      fontWeight: FontWeight.w400);
  static final text1 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 17,
      color: AppColors.text1,
      fontWeight: FontWeight.w400);
  static final text2 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 17,
      color: AppColors.text2,
      fontWeight: FontWeight.w400);
  static final buttonText = TextStyle(
      fontFamily: fontFamily,
      fontSize: 17,
      color: AppColors.backgroundColor,
      fontWeight: FontWeight.w700);
}

abstract class AppAssets {
  static final homeHeaderLogo =
      Image(image: AssetImage('lib/assets/images/homeHeaderLogo.png'));
  static final menuIcon = Image(image: AssetImage('lib/assets/icons/menu.png'));
  static final searchIcon =
      Image(image: AssetImage('lib/assets/icons/search.png'));
}
