import 'package:flutter/material.dart';
import 'package:t_cars/screens/main_screen.dart';

const String appTitle = 'T-Cars';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
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
        body: MainScreenContainer(),
        backgroundColor: Color(0xD1E5A0EF),
        bottomNavigationBar: BottomNavigationBar(
          items: [
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
        ),
      ),
    ),
  );
}
