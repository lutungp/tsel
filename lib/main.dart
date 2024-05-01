import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telkomsel/screens/bottom_nav_bar.dart';
import 'package:telkomsel/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telkomsel App Clone',
      theme: ThemeData(
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(selectedItemColor: redColor),
      ),
      home: BottomNavBar(),
    );
  }
}
