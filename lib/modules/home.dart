import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:first_project_learningb/kernel/widget/custom_list_user.dart';
//import 'package:first_project_learningb/modules/forms/adapters/screens/first_form.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
 Widget build(BuildContext context) {
    final Map item={'name': 'Obed Hurtado'};
    final Map item2={'name': 'Andrea Cortés'};

    final List items = [item, item2];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(itemCount: items.length, itemBuilder: (context, index) {
          return CustomListUser(item: items[index]);
        }),
      )
    );
  }
}
