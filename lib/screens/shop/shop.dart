import 'package:flutter/material.dart';
import 'package:telkomsel/themes.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Shop',
          style: mediumText10.copyWith(color: blackColor),
        ),
      ),
    );
  }
}
