import 'package:flutter/material.dart';

class Account extends StatelessWidget{
  const Account({super.key});
  @override
  Widget build(BuildContext context) {
    return  
    // Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Cuenta'),
    //   ),
    //   body: 
      const Text('Hola');
      // SafeArea(
      //   child: SingleChildScrollView(
      //     child: Column(children: <Widget>[
      //       Center(
      //         child: Image.asset('assets/images/logo-utez.png', width: 200, height: 150,),
      //       ),
      //       Form(
      //       // onChanged: () {
      //       //   setState(() {
      //       //     _isButtomDisabled = !_formKey.currentState!.validate();
      //       //   });
      //       // },
      //       //key: _formKey,
      //       child: Container(
      //         padding: const EdgeInsets.all(50),
      //         child: Column(
      //           children: <Container>[
      //               Container(
      //               margin: const EdgeInsets.only(bottom: 16),
      //               child: TextFormField(
      //                 decoration: const InputDecoration(
      //                   labelText: 'Correo electrónico',
      //                   hintText: 'example@gmail.com',
      //                 ),
      //                 // validator: (value) {
      //                 //   RegExp regex = RegExp(Validations.email);
      //                 //   if (value == null || value.isEmpty) {
      //                 //     return 'campo obligatorio';
      //                 //   } else if (!regex.hasMatch(value)) {
      //                 //     return 'Introduce un correo válido';
      //                 //   }
      //                 //   return null;
      //                 // },
      //                 keyboardType: TextInputType.emailAddress,
      //                 //controller: _email,
      //               ),
      //             ),
      //               Container(
      //                 margin: const EdgeInsets.only(bottom: 16),
      //                 child: TextFormField(
      //                 decoration: const InputDecoration(             
      //                   labelText: 'Contraseña',
      //                   hintText: '**********',
      //                 ),
      //                 validator: (value) {
      //                   if(value!.isEmpty){
      //                     return 'Campo obligatorio';
      //                   }else{
      //                     return null;
      //                   }
      //                 },
      //                 keyboardType: TextInputType.visiblePassword,
      //                 //controller: _fullName,
      //                 ),
      //               ),
                  
      //             Container(
      //               padding: const EdgeInsets.all(16),
      //               child: ElevatedButton( 
      //                 onPressed: () {}, 
      //                 child: const Text('Iniciacr sesión'),),
      //             )
      //           ],
      //         ),
      //       )
      //     ),
      //     ],),
      //   ),
      // )
    //);
  }
}