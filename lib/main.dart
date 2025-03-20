import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/app.dart';
import 'package:t_cars/theme/theme_provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: const App(),
      )
  );
}
