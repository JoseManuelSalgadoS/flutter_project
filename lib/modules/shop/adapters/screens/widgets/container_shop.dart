import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ContainerShop extends StatelessWidget {
  const ContainerShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(children: [Image.asset('assets/images/macbook.jpg'), 
      Row(
        children: [
          const Text('MAC M2'),
          const Spacer(),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              return;
            },
          )
        ],
      ),
        const Text('descripcion')
      ],
      
      ),
    );
  }
  
}