import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t_cars/features/account/account.dart';
import 'package:t_cars/features/cars_list/cars_list.dart';
import 'package:t_cars/features/favorites/favorites.dart';
import 'package:t_cars/theme/purple_theme_extension.dart';
import 'package:t_cars/theme/theme_provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final String appTitle = 'T-Cars';

  int _currentIndex = 0;
  final List<Widget> _bottomRoutes = [
    CarsListScreen(),
    FavoritesScreen(),
    AccountScreen(),
  ];

  void onBottomItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final PurpleThemeExtension? theme =
        themeProvider.currentTheme.extension<PurpleThemeExtension>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.currentTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: theme?.buttonBorderPurple,
          elevation: 4.0,
          titleTextStyle: TextStyle(
            fontSize: theme?.titleTextSize,
            fontWeight: theme?.titleWeigh,
            color: theme?.whiteText,
          ),
        ),
        backgroundColor: theme?.scaffoldBackgroundColor,
        body: _bottomRoutes.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorites",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
          currentIndex: _currentIndex,
          onTap: onBottomItemTapped,
          selectedItemColor: theme?.deepPurpleText,
          unselectedItemColor: theme?.defaultFavoriteColor,
        ),
      ),
    );
  }
}
