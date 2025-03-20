import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/features/account/widgets/widget.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

class ThemeModeConfig extends StatefulWidget {
  const ThemeModeConfig({super.key});

  @override
  State<ThemeModeConfig> createState() => _ThemeModeConfigState();
}

class _ThemeModeConfigState extends State<ThemeModeConfig> {
  final String _switchThemeName = 'dark mode';

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Padding(
      padding: EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Theme: ',
            style: TextStyle(
              color: theme?.blackText,
              fontSize: theme?.textSize,
              fontWeight: theme?.titleWeigh,
            ),
          ),
          Text(
            themeProvider.isDarkThemeEnabled ? 'disable ' : 'enable ',
            style: TextStyle(
              color: theme?.blackText,
              fontSize: theme?.textSize,
            ),
          ),
          Text(
            _switchThemeName,
            style: TextStyle(
              color: theme?.blackText,
              fontSize: theme?.textSize,
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(width: 30.0),
          SwitchThemeButton(),
        ],
      ),
    );
  }
}
