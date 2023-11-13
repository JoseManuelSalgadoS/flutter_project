import 'package:first_project_learningb/kernel/colors/colors_app.dart';
//import 'package:first_project_learningb/modules/forms/adapters/screens/first_form.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
          backgroundColor: ColorsApp.primaryColor,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text('Registrarse')),
          ),
        ));
  }
}
