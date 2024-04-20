import 'package:flutter/material.dart';
import 'package:telkomsel/themes.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Menu',
          style: mediumText10.copyWith(color: blackColor),
        ),
      ),
    );
  }
}
