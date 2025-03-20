import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/features/car_single/view/car_single.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

class CarMainInfo extends StatelessWidget {
  const CarMainInfo({super.key, required this.widget});

  final CarSingle widget;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.advCarWidget.name,
            style: TextStyle(
              fontWeight: theme?.subtitleWeigh,
              color: theme?.changeableTextColor,
              fontSize: theme?.titleTextSize,
            ),
          ),
          Text(
            '\$${widget.advCarWidget.price}',
            style: TextStyle(
              fontWeight: theme?.titleWeigh,
              color: theme?.changeableTextColor,
              fontSize: theme?.smallTextSize,
            ),
          ),
        ],
      ),
    );
  }
}
