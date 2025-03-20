import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

class CarSingleDivider extends StatelessWidget {
  const CarSingleDivider({super.key, required this.dividerPadding});

  final EdgeInsetsGeometry dividerPadding;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Padding(
      padding: dividerPadding,
      child: Divider(color: theme?.dividerSingleCarColor),
    );
  }
}
