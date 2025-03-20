import 'package:flutter/material.dart';
import 'package:t_cars/features/account/widgets/user_photo.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  String switchThemeName = 'dark mode';
  bool isDarkThemeEnabled = false;

  void toggleDarkTheme(bool value) {
    setState(() {
      isDarkThemeEnabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PurpleThemeExtension? theme =
        Theme.of(context).extension<PurpleThemeExtension>();
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
              Padding(
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
                      isDarkThemeEnabled ? 'disable ' : 'enable ',
                      style: TextStyle(
                        color: theme?.blackText,
                        fontSize: theme?.textSize,
                      ),
                    ),
                    Text(
                      switchThemeName,
                      style: TextStyle(
                        color: theme?.blackText,
                        fontSize: theme?.textSize,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Switch(
                      value: isDarkThemeEnabled,
                      onChanged: toggleDarkTheme,
                      trackOutlineWidth: WidgetStateProperty.resolveWith<double?>((Set<WidgetState> states) {
                        if (!states.contains(WidgetState.disabled)) {
                          return 3.5;
                        }
                        return 2.0;
                      }),
                      trackOutlineColor: WidgetStateProperty.all(Colors.deepPurple),
                      inactiveThumbColor: theme?.buttonBorderPurple,
                      inactiveTrackColor: Colors.white12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
