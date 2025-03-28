import 'package:flutter/material.dart';
import 'package:t_cars/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  bool isDarkTheme = false;

  ThemeData get currentTheme => isDarkTheme ? darkTheme : purpleTheme;
  bool get isDarkThemeEnabled => isDarkTheme;

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}