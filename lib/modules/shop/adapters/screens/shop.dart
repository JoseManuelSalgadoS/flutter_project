import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:first_project_learningb/modules/shop/adapters/screens/widgets/container_shop.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> item = {
      'title': 'Samsung Galaxy Ultra S23',
      'description': 'Nuevo Samsung Galaxy S23 Ultra descubre todo lo nuevo que tiene este dispositivo',
      'initialRating': 4.5,
      'imageUrl': 'assets/images/logo-utez.png'
    };
    final Map<String, dynamic> item2 = {
      'title': 'iPhone 15 Pro Max',
      'description': 'Nuevo iPhone 15 Pro Max descubre todo lo nuevo que tiene este dispositivo',
      'initialRating': 4.0,
      'imageUrl': 'assets/images/iphone.jpg'
    };
    final List items = [item, item2];
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
          children: List.generate(items.length, (index){
            return ContainerShop(
                title: items[index]['title'],
                description: items[index]['description'],
                initialRating: items[index]['initialRating'],
                imageUrl: items[index]['imageUrl'],
              );
          })
        ),
      );
  }
  
}