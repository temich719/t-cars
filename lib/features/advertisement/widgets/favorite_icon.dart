import 'package:flutter/material.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key, required this.name});

  final String name;

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isActive = false;

  void _onFavoriteTapped(BuildContext context) {
    setState(() {
      isActive = !isActive;
    });
    if (isActive) {
      final SnackBar snackBar = SnackBar(
        content: Text(
          'Added to favorites',
          style: TextStyle(
            color:
                Theme.of(context).extension<PurpleThemeExtension>()?.whiteText,
          ),
        ),
        action: SnackBarAction(
          label: 'Undo',
          textColor:
              Theme.of(context).extension<PurpleThemeExtension>()?.whiteText,
          onPressed: () {
            setState(() {
              isActive = false;
            });
          },
        ),
        backgroundColor:
            Theme.of(
              context,
            ).extension<PurpleThemeExtension>()?.buttonBorderPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 28.0),
        duration: Duration(seconds: 3),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    final PurpleThemeExtension? theme =
        Theme.of(context).extension<PurpleThemeExtension>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 8.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.name,
            style: TextStyle(
              fontSize: theme?.titleTextSize,
              fontWeight: theme?.titleWeigh,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              size: 25.0, //todo edges and sizes into common sizes class
              fill: 0.5,
              color:
                  isActive
                      ? theme?.addedFavoriteColor
                      : theme?.defaultFavoriteColor,
            ),
            onPressed: () => _onFavoriteTapped(context),
          ),
        ],
      ),
    );
  }
}
