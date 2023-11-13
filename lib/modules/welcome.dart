import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bienvenido'),
          backgroundColor: ColorsApp.primaryColor,
        ),
        body: const Center(
          child: Text('Bienvenido'),
        ));
  }
}
