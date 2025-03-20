import 'package:flutter/material.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';

final basicTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xD1E5A0EF),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.deepPurple,
    elevation: 4.0,
    titleTextStyle: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.deepPurple,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
  ),
);

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
      dividerSingleCarColor: Colors.white70,
      blackText: Colors.black,
    ),
  ],
);

final darkTheme = basicTheme.copyWith(
  extensions: <ThemeExtension<dynamic>>[
    PurpleThemeExtension(
      whiteText: Colors.white,
      deepPurpleText: Colors.deepPurple,
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
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
        elevation: 4.0,
        titleTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      )
    ),
  ],
);
