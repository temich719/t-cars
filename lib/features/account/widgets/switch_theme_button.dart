import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

class SwitchThemeButton extends StatefulWidget {
  const SwitchThemeButton({super.key});

  @override
  State<SwitchThemeButton> createState() => _SwitchThemeButtonState();
}

class _SwitchThemeButtonState extends State<SwitchThemeButton> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Switch(
      value: themeProvider.isDarkThemeEnabled,
      onChanged: (value) {
        themeProvider.toggleTheme();
      },
      trackOutlineWidth: WidgetStateProperty.resolveWith<double?>((
        Set<WidgetState> states,
      ) {
        if (!states.contains(WidgetState.disabled)) {
          return 3.5;
        }
        return 2.0;
      }),
      trackOutlineColor: WidgetStateProperty.all(theme?.buttonBorderPurple),
      inactiveThumbColor: theme?.buttonBorderPurple,
      inactiveTrackColor: Colors.white12,
      activeTrackColor: theme?.buttonBorderPurple,
    );
  }
}
