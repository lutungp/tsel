import 'package:flutter/material.dart';
import 'package:telkomsel/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home',
          style: mediumText10.copyWith(color: blackColor),
        ),
      ),
    );
  }
}
