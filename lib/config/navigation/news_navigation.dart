import 'package:first_project_learningb/modules/news/adapters/screens/news.dart';
import 'package:flutter/material.dart';

class NewsNavigation extends StatelessWidget{
  const NewsNavigation({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/news',
      routes: {
        '/news':(context) => const News()
      },
    );
  }
}