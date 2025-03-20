import 'dart:ui';

import 'package:flutter/material.dart';

class PurpleThemeExtension extends ThemeExtension<PurpleThemeExtension> {

  PurpleThemeExtension({
    required this.whiteText,
    required this.deepPurpleText,
    required this.carPrice,
    required this.defaultIconColor,
    required this.buttonBorderPurple,
    required this.titleTextSize,
    required this.titleWeigh,
    required this.defaultFavoriteColor,
    required this.addedFavoriteColor,
    required this.textSize,
    required this.callButtonBackgroundColor,
    required this.smallTextSize,
    required this.subtitleWeigh,
    required this.bigTextSize,
    required this.dividerSingleCarColor,
    this.scaffoldBackgroundColor,
    this.appBarTheme,
    this.bottomNavigationBarTheme,
    required this.blackText,
  });

  final Color whiteText;
  final Color deepPurpleText;
  final Color carPrice;
  final Color defaultIconColor;
  final Color buttonBorderPurple;
  final double titleTextSize;
  final FontWeight titleWeigh;
  final Color defaultFavoriteColor;
  final Color addedFavoriteColor;
  final double textSize;
  final Color callButtonBackgroundColor;
  final double smallTextSize;
  final FontWeight subtitleWeigh;
  final double bigTextSize;
  final Color dividerSingleCarColor;
  final Color? scaffoldBackgroundColor;
  final AppBarTheme? appBarTheme;
  final BottomNavigationBarThemeData? bottomNavigationBarTheme;
  final Color? blackText;

  @override
  ThemeExtension<PurpleThemeExtension> copyWith({Color? whiteText, Color? deepPurpleText,
    Color? carPrice, Color? defaultIconColor,
    Color? buttonBorderPurple, double? titleTextSize,
    FontWeight? titleWeight, Color? defaultFavoriteColor,
    Color? addedFavoriteColor, double? textSize,
    Color? callButtonBackgroundColor, double? smallTextSize,
    FontWeight? subtitleWeigh, double? bigTextSize,
    Color? dividerSingleCarColor, Color? scaffoldBackgroundColor,
    AppBarTheme? appBarTheme, BottomNavigationBarThemeData? bottomNavigationBarTheme,
    Color? blackText,
  }) {
    return PurpleThemeExtension(
      whiteText: whiteText ?? this.whiteText,
      deepPurpleText: deepPurpleText ?? this.deepPurpleText,
      carPrice: carPrice ?? this.carPrice,
      defaultIconColor: defaultIconColor ?? this.defaultIconColor,
      buttonBorderPurple: buttonBorderPurple ?? this.buttonBorderPurple,
      titleTextSize: titleTextSize ?? this.titleTextSize,
      titleWeigh: titleWeigh,
      defaultFavoriteColor: defaultFavoriteColor ?? this.defaultFavoriteColor,
      addedFavoriteColor: addedFavoriteColor ?? this.addedFavoriteColor,
      textSize: textSize ?? this.textSize,
      callButtonBackgroundColor: callButtonBackgroundColor ?? this.callButtonBackgroundColor,
      smallTextSize: smallTextSize ?? this.smallTextSize,
      subtitleWeigh: subtitleWeigh ?? this.subtitleWeigh,
      bigTextSize: bigTextSize ?? this.bigTextSize,
      dividerSingleCarColor: dividerSingleCarColor ?? this.dividerSingleCarColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor ?? this.scaffoldBackgroundColor,
      appBarTheme: appBarTheme ?? this.appBarTheme,
      bottomNavigationBarTheme: bottomNavigationBarTheme ?? this.bottomNavigationBarTheme,
      blackText: blackText ?? this.blackText,
    );
  }

  @override
  ThemeExtension<PurpleThemeExtension> lerp(covariant ThemeExtension<PurpleThemeExtension>? other, double t) {
    if (other is! PurpleThemeExtension) return this;
    return PurpleThemeExtension(
      whiteText: Color.lerp(whiteText, other.whiteText, t)!,
      deepPurpleText: Color.lerp(deepPurpleText, other.deepPurpleText, t)!,
      carPrice: Color.lerp(carPrice, other.carPrice, t)!,
      defaultIconColor: Color.lerp(defaultIconColor, other.defaultIconColor, t)!,
      buttonBorderPurple: Color.lerp(buttonBorderPurple, other.buttonBorderPurple, t)!,
      titleTextSize: lerpDouble(titleTextSize, other.titleTextSize, t)!,
      titleWeigh: FontWeight.lerp(titleWeigh, other.titleWeigh, t)!,
      defaultFavoriteColor: Color.lerp(defaultFavoriteColor, other.defaultFavoriteColor, t)!,
      addedFavoriteColor: Color.lerp(addedFavoriteColor, other.addedFavoriteColor, t)!,
      textSize: lerpDouble(textSize, other.textSize, t)!,
      callButtonBackgroundColor: Color.lerp(callButtonBackgroundColor, other.callButtonBackgroundColor, t)!,
      smallTextSize: lerpDouble(smallTextSize, other.smallTextSize, t)!,
      subtitleWeigh: FontWeight.lerp(subtitleWeigh, other.subtitleWeigh, t)!,
      bigTextSize: lerpDouble(bigTextSize, other.bigTextSize, t)!,
      dividerSingleCarColor: Color.lerp(dividerSingleCarColor, other.dividerSingleCarColor, t)!,
      scaffoldBackgroundColor: Color.lerp(scaffoldBackgroundColor, other.scaffoldBackgroundColor, t)!,
      appBarTheme: AppBarTheme.lerp(appBarTheme, other.appBarTheme, t),
      bottomNavigationBarTheme: BottomNavigationBarThemeData.lerp(bottomNavigationBarTheme, other.bottomNavigationBarTheme, t),
      blackText: Color.lerp(blackText, other.blackText, t)!,
    );
  }

}