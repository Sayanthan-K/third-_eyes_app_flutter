import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thired_eyes/Constants/Colors.dart';
import 'package:thired_eyes/Screens/Dashborad.dart';
import 'package:thired_eyes/Screens/SplashScreen.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData(
      primaryColor: primaryColor,
      accentColor: accentColor,
      scaffoldBackgroundColor: Colors.grey.shade100,
      primarySwatch: Colors.grey,
      // define your light theme colors here
    );
    final darkTheme = ThemeData(
      primaryColor: primaryColor_dark,
      accentColor: accentColor,
      scaffoldBackgroundColor: Colors.grey.shade100,
      primarySwatch: Colors.cyan,
      // define your dark theme colors here
    );
    return MaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        darkTheme: darkTheme,
        theme: lightTheme,
        // theme: ThemeData(
        //   primaryColor: _primaryColor,
        //   accentColor: _accentColor,
        //   scaffoldBackgroundColor: Colors.grey.shade100,
        //   primarySwatch: Colors.grey,
        // ),
        routes: {
          '/': (context) => SplashScreen(title: "title"),
          '/home': (context) => Dashborad(),
        });
  }
}
