import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

class CarSingleCallButton extends StatelessWidget {
  const CarSingleCallButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 10.0,
      child: GestureDetector(
        onTap: () => {}, //todo
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                backgroundColor: theme?.callButtonBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color: (theme?.buttonBorderPurple)!,
                    width: 2.0,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  'Call...',
                  style: TextStyle(
                    color: theme?.deepPurpleText,
                    fontSize: theme?.textSize,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
