import 'package:first_project_learningb/modules/shop/adapters/screens/shop.dart';
import 'package:flutter/material.dart';

class ShopNavigation extends StatelessWidget {
  const ShopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/shop',
      routes: {'/shop': (context) => const Shop()},
    );
  }
  
}