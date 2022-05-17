import 'dart:ui';
import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      // primarySwatch: Colors.blue,
      // primaryColor: isDarkTheme ? Colors.black : Colors.white,
      //
      // backgroundColor: isDarkTheme ? Colors.black : const Color(0xffF1F5FB),
      //
      // indicatorColor: isDarkTheme ? const Color(0xff0E1D36) : const Color(0xffCBDCF8),
      // buttonColor: isDarkTheme ? const Color(0xff3B3B3B) : const Color(0xffF1F5FB),
      //
      // hintColor: isDarkTheme ? const Color(0xffF5FFFA) : const Color(0xffD3D3D3),
      //
      // highlightColor: isDarkTheme ? const Color(0xff372901) : const Color(0xffFCE192),
      // hoverColor: isDarkTheme ? const Color(0xff3A3A3B) : const Color(0xff4285F4),
      //
      // focusColor: isDarkTheme ? const Color(0xff0B2512) : const Color(0xffA8DAB5),
      // disabledColor: Colors.grey,
      // textSelectionColor: isDarkTheme ? Colors.white : Colors.black,
      // cardColor: isDarkTheme ? const Color(0xFF151515) : Colors.white,
      // canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      // brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      // buttonTheme: Theme.of(context).buttonTheme.copyWith(
      //     colorScheme: isDarkTheme ? const ColorScheme.dark() : const ColorScheme.light()),
      // appBarTheme: const AppBarTheme(
      //   elevation: 5.0,
      // ),
    );

  }
}