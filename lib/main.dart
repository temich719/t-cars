import 'package:flutter/material.dart';
import 'package:t_cars/advertisement.dart';
import 'package:t_cars/filter_button.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text(
                "T-Cars",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            backgroundColor: Colors.deepPurple,
            elevation: 4.0,
        ),
        body: FilterButton(),
        backgroundColor: Color(0xD1E5A0EF),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
            ],
            backgroundColor: Colors.deepPurple,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
        ),
      ),
    )
  );
}


