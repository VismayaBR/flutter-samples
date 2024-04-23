import 'package:flutter/material.dart';
import 'package:flutter_projects/date.dart';
import 'package:flutter_projects/drawer.dart';
import 'package:flutter_projects/dropdown.dart';
import 'package:flutter_projects/home.dart';
import 'package:flutter_projects/home1.dart';
import 'package:flutter_projects/navbar.dart';
import 'package:flutter_projects/radiobutton.dart';
import 'package:flutter_projects/ratingbar.dart';
import 'package:flutter_projects/tabbar.dart';
import 'package:flutter_projects/validation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        // useMaterial3: true,
      ),
      home: AlertBox()
    );
  }
}
