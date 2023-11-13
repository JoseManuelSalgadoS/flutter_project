import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class CustomListUser extends StatelessWidget{
  final Map item;
  const CustomListUser({super.key, required this.item});
  String getInitials(String name){
    List<String> names = name.split(' ');
    String initials = '';
    if(names.length > 0 ){
      initials += names[0][0];
    }
    if(names.length > 1){
      initials += names[1][0];
    }
    return initials.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(children: [
          CircleAvatar(backgroundColor: ColorsApp.primaryColor,
          foregroundColor: ColorsApp.whiteColor,
          child: Text(getInitials(item['name'])),
          ),
          const SizedBox(width: 16,),
          Text(item['name']),
          const Spacer(),
          const Icon(Icons.more_vert),
        ]),
      ),
    );
  }

}