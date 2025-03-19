import 'package:flutter/material.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';

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
    final PurpleThemeExtension? theme =
        Theme.of(context).extension<PurpleThemeExtension>();
    return Column(
      children: [
        IconButton(
          icon: Icon(
            widget.actionIcon,
            size: theme?.bigTextSize,
            color: theme?.whiteText,
          ),
          onPressed: widget.onIconPressed,
        ),
        Text(
          widget.text,
          style: TextStyle(
            fontSize: theme?.smallTextSize,
            color: theme?.whiteText,
          ),
        ),
      ],
    );
  }
}
