import 'package:flutter/material.dart';

class ShopCart extends StatelessWidget {
  const ShopCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: ListCartShop(),
          ),
        ],
      ),
    );
  }
}

class ListCartShop extends StatelessWidget {
  const ListCartShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Image.asset(
              'assets/images/logo-utez.png',
              width: 100,
              height: 100,
            ),
            Container(
              width: 180,
              margin: const EdgeInsets.only(left: 8),
              child: const Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'IPhone 15 Pro Max',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text('Esta es una descripcion que sirve como ejemplor', style: TextStyle(color: Colors.black54),),
                ],
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Quitar'))
          ],
        ),
      ),
    );
  }
}
