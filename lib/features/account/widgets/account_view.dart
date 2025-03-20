import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/features/account/widgets/user_photo.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

import 'theme_mode.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10.0),
              UserPhoto(),
              SizedBox(height: 10.0),
              Text(
                'Name Surname',
                style: TextStyle(
                  color: theme?.deepPurpleText,
                  fontSize: theme?.titleTextSize,
                  fontWeight: theme?.titleWeigh,
                ),
              ),
              SizedBox(height: 20.0),
              Divider(),
              ThemeModeConfig(),
            ],
          ),
        ),
      ),
    );
  }
}
