import 'package:flutter/material.dart';
import 'package:t_cars/features/car_single/view/car_single.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';

class CarMainInfo extends StatelessWidget {
  const CarMainInfo({super.key, required this.widget});

  final CarSingle widget;

  @override
  Widget build(BuildContext context) {
    final PurpleThemeExtension? theme =
        Theme.of(context).extension<PurpleThemeExtension>();
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.advCarWidget.name,
            style: TextStyle(
              fontWeight: theme?.subtitleWeigh,
              color: theme?.whiteText,
              fontSize: theme?.titleTextSize,
            ),
          ),
          Text(
            '\$${widget.advCarWidget.price}',
            style: TextStyle(
              fontWeight: theme?.titleWeigh,
              color: theme?.whiteText,
              fontSize: theme?.smallTextSize,
            ),
          ),
        ],
      ),
    );
  }
}
