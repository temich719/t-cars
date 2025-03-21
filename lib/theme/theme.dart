import 'package:flutter/material.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';

//hard shit code sorry who watch this
final basicTheme = ThemeData();

final purpleTheme = basicTheme.copyWith(
  extensions: <ThemeExtension<dynamic>>[
    PurpleThemeExtension(
      whiteText: Colors.white,
      deepPurpleText: Colors.deepPurple,
      carPrice: Colors.green,
      defaultIconColor: Colors.white,
      buttonBorderPurple: Colors.deepPurple,
      titleTextSize: 20.0,
      titleWeigh: FontWeight.bold,
      defaultFavoriteColor: Colors.grey,
      addedFavoriteColor: Colors.redAccent,
      textSize: 18.0,
      callButtonBackgroundColor: Colors.white,
      smallTextSize: 16.0,
      subtitleWeigh: FontWeight.w500,
      bigTextSize: 30.0,
      dividerSingleCarColor: Color(0xD1E5A0EF),
      blackText: Colors.black,
      scaffoldBackgroundColor: Color(0xD1E5A0EF),
      cardColor: Colors.white,
      circleIndicatorColor: Colors.white,
      refreshIndicatorColor: Colors.deepPurple,
    ),
  ],
);

final darkTheme = basicTheme.copyWith(
  extensions: <ThemeExtension<dynamic>>[
    PurpleThemeExtension(
      whiteText: Colors.white,
      deepPurpleText: Colors.blue,
      carPrice: Colors.green,
      defaultIconColor: Colors.white,
      buttonBorderPurple: Colors.blue,
      titleTextSize: 20.0,
      titleWeigh: FontWeight.bold,
      defaultFavoriteColor: Colors.grey,
      addedFavoriteColor: Colors.redAccent,
      textSize: 18.0,
      callButtonBackgroundColor: Colors.white,
      smallTextSize: 16.0,
      subtitleWeigh: FontWeight.w500,
      bigTextSize: 30.0,
      dividerSingleCarColor: Colors.white70,
      scaffoldBackgroundColor: Colors.black,
      blackText: Colors.black,
      cardColor: Colors.blueGrey,//todo
      changeableTextColor: Colors.white,
      circleIndicatorColor: Colors.blueGrey,
      refreshIndicatorColor: Colors.blueGrey,
    ),
  ],
);
