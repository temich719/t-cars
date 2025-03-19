import 'package:flutter/material.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';

class CarSingleDivider extends StatelessWidget {
  const CarSingleDivider({super.key, required this.dividerPadding});

  final EdgeInsetsGeometry dividerPadding;

  @override
  Widget build(BuildContext context) {
    final PurpleThemeExtension? theme =
        Theme.of(context).extension<PurpleThemeExtension>();
    return Padding(
      padding: dividerPadding,
      child: Divider(color: theme?.dividerSingleCarColor),
    );
  }
}
