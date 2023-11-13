import 'package:flutter/material.dart';
import 'package:first_project_learningb/kernel/widget/custom_carrousel.dart';
import 'package:first_project_learningb/kernel/colors/colors_app.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> itemList = [
      const FisrtSection(
        imagePath: 'assets/images/macbook.jpg',
        title: 'MACBOOK - M2',
        description: 'Discover the powerful performance of the new MACBOOK - M2 processor.',
      ),
      const FisrtSection(
        imagePath: 'assets/images/iphone.jpg',
        title: 'iPhone 13 Pro Max',
        description: 'Explore the stunning features of the latest iPhone 13 Pro Max.',
      ),
      const FisrtSection(
        imagePath: 'assets/images/ipad.jpg',
        title: 'iPad Air 5th Gen',
        description: 'Introducing the sleek and powerful iPad Air 5th Gen with a stunning Liquid Retina display.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: Center(
        child: CustomeCarousel(
          itemList: itemList,
          carouselHeight: 300,
        ),
      ),
    );
  }
}

class FisrtSection extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const FisrtSection({super.key, required this.imagePath, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(top: 30),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 150,
            width: width,
            fit: BoxFit.fitWidth,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
