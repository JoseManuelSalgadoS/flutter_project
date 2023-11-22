import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShopDetail extends StatelessWidget {
  const ShopDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dynamic rawArgument = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> arguments =
        (rawArgument as Map<String, dynamic>?) ?? {};
    final title = arguments['title'] ?? '';
    final description = arguments['description'] ?? '';
    final initialRating = arguments['initialRating'] ?? 0.0;
    final imageUrl = arguments['imageUrl'] ?? 'assets/images/logo-utez.png';
    final price = arguments['price'] ?? 'error';
    double widthImage = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(imageUrl,
                width: widthImage, height: 250, fit: BoxFit.fitWidth),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  SizedBox(
                    width: 180,
                    child: Text(
                      title,
                      style:
                          const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: ColorsApp.primaryColor),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        '\$ $price',
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold, color: ColorsApp.successColor),
                      ),
                      RatingBar.builder(
                        initialRating: initialRating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 16,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                        ignoreGestures: true,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                description,
                style: const TextStyle(fontSize: 14, color: Colors.black45),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          foregroundColor: ColorsApp.successColor,
          backgroundColor: Colors.white,
          side: const BorderSide(color: ColorsApp.successColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const Text('Agregar al carrito'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
