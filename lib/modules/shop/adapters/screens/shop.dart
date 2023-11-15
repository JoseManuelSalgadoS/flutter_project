import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:first_project_learningb/modules/shop/adapters/screens/widgets/container_shop.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> item = {
      'title': 'Samsung Galaxy Ultra S23',
      'description': 'Nuevo Samsung Galaxy S23 Ultra aaaaaaaaaaaaaaaaaaaaa',
      'initialRating': 4.5,
      'imageUrl': 'assets/images/logo-utez.png'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tienda'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(8),
          crossAxisSpacing: 8,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children:  <Widget>[
              ContainerShop(
                title: item['title'],
                description: item['description'],
                initialRating: item['initialRating'],
                imageUrl: item['imageUrl'],
              ),
              ContainerShop(
                title: item['title'],
                description: item['description'],
                initialRating: item['initialRating'],
                imageUrl: item['imageUrl'],
              )
          ],
        ),
      );
  }
  
}