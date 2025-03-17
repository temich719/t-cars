import 'package:flutter/material.dart';
import 'package:t_cars/screens/account_screen.dart';
import 'package:t_cars/screens/favorites_screen.dart';
import 'package:t_cars/screens/main_screen.dart';

const String appTitle = 'T-Cars';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;
  final List<Widget> _widgetsBottomBar = [
    MainScreenContainer(),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appTitle,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 4.0,
      ),
      body: Center(
        child: _widgetsBottomBar.elementAt(_currentIndex),
      ), //MainScreenContainer(),
      backgroundColor: Color(0xD1E5A0EF),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: onBottomItemTapped,
      ),
    );
  }
}
