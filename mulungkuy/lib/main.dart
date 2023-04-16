import 'package:flutter/material.dart';
import 'package:mulungkuy/WelcomePage.dart';
import 'package:mulungkuy/hompage.dart';
import 'package:mulungkuy/login.dart';
import 'package:mulungkuy/order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primaryColor: Color(0xFF57AE09),
        accentColor: Color(0xFF57AE09),
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/order': (context) => OrderPage(),
      },
    );
  }
}
