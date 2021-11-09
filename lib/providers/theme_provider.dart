
import 'package:flutter/material.dart';
import 'package:projects/constants/index.dart';

class ThemeProvider extends ChangeNotifier {

  bool _isDarkTheme = true;

  bool get isDarkTheme => _isDarkTheme;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.cyan
    );
  }

  ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue
    );
  }

  void toggleTheme(){
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

}