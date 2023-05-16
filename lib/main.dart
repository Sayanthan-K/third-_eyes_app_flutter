import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thired_eyes/Constants/Colors.dart';
import 'package:thired_eyes/Screens/Dashborad.dart';
import 'package:thired_eyes/Screens/SplashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //  Color _primaryColor = HexColor('#41fc03');
  //  Color _accentColor = HexColor('#03fc90');

  // Color _primaryColor_dark = HexColor('#333333');

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
