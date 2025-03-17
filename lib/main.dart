import 'package:flutter/material.dart';
import 'package:t_cars/app.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: App()
    ),
  );
}
