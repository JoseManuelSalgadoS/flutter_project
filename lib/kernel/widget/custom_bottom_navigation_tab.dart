import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationTab extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onItemTapped;
  const CustomBottomNavigationTab({Key? key, required this.selectedIndex, required this.onItemTapped});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'Noticias'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Tienda')
      ],
      currentIndex: selectedIndex,
      selectedItemColor: ColorsApp.successColor,
      unselectedItemColor: ColorsApp.primaryColor,
      onTap: onItemTapped,
    );
  }
}