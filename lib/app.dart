import 'package:flutter/material.dart';
import 'package:t_cars/features/account/account.dart';
import 'package:t_cars/features/cars_list/cars_list.dart';
import 'package:t_cars/features/favorites/favorites.dart';
import 'package:t_cars/theme/theme.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: purpleTheme,
      home: Scaffold(
        appBar: AppBar(title: Text(appTitle)),
        body: Center(child: _bottomRoutes.elementAt(_currentIndex)),
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
        ),//todo decompose
      ),
    );
  }
}
