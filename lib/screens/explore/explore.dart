import 'package:flutter/material.dart';
import 'package:telkomsel/themes.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Explore',
          style: mediumText10.copyWith(color: blackColor),
        ),
      ),
    );
  }
}
