import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class CustomeCarousel  extends StatefulWidget{
  final List<Widget> itemList;
  final double carouselHeight;
  final double indicatorHeight;
  final double indicatorWidth;
  const CustomeCarousel({Key? key, required this.itemList, this.carouselHeight = 150, this.indicatorWidth = 20, this.indicatorHeight = 8});

  @override
  State<CustomeCarousel> createState() => _CustomeCarouselState();
}

class _CustomeCarouselState extends State<CustomeCarousel> {
  int _currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.itemList, 
          options: CarouselOptions(
            height: widget.carouselHeight,
            autoPlay: true,
            onPageChanged: (index, reason) => {
              setState(() {
                _currenIndex = index;
              })
            },
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.itemList.map((item) {
            int index = widget.itemList.indexOf(item);
            return Container(
              width: widget.indicatorWidth,
              height: widget.indicatorHeight,
              margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _currenIndex == index ? ColorsApp.successColor : ColorsApp.secondaryColor
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}