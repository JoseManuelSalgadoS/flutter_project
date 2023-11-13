import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:first_project_learningb/modules/shop/adapters/screens/widgets/container_shop.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tienda'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: const <Widget>[
              ContainerShop(),
              ContainerShop()
          ],
        ),
      );
  }
  
}