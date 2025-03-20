import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

class CarSingleIconAction extends StatefulWidget {
  const CarSingleIconAction({
    super.key,
    required this.actionIcon,
    required this.text,
    required this.onIconPressed,
  });

  final IconData actionIcon;
  final String text;
  final VoidCallback onIconPressed;

  @override
  State<CarSingleIconAction> createState() => _CarSingleIconActionState();
}

class _CarSingleIconActionState extends State<CarSingleIconAction> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Column(
      children: [
        IconButton(
          icon: Icon(
            widget.actionIcon,
            size: theme?.bigTextSize,
            color: theme?.changeableTextColor,
          ),
          onPressed: widget.onIconPressed,
        ),
        Text(
          widget.text,
          style: TextStyle(
            fontSize: theme?.smallTextSize,
            color: theme?.changeableTextColor,
          ),
        ),
      ],
    );
  }
}
