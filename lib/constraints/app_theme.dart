import 'package:flutter/material.dart';

var lightDark = const Color(0xff182126);
var deepDark = const Color(0xff13191D);
var lightyellow = const Color(0xffFEE715);
var lightgrey = const Color(0xffDEDEDE);

class AppTheme {
  static final ThemeData dark = ThemeData(
      primaryColor: lightDark,
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(backgroundColor: lightDark,
          selectedItemColor: lightyellow,
          unselectedItemColor: lightgrey,
          ),
      appBarTheme: AppBarTheme(
        color: lightDark,
      ),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: lightDark,
      
          );
}
