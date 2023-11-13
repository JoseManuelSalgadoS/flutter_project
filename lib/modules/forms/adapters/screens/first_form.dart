import 'package:first_project_learningb/kernel/validations/validations.dart';
import 'package:flutter/material.dart';

class FirstForm extends StatefulWidget{
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isButtomDisabled = true;
  final TextEditingController _fullName = TextEditingController(text: '');
  final TextEditingController _age = TextEditingController(text: '');
  final TextEditingController _email = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            onChanged: () {
              setState(() {
                _isButtomDisabled = !_formKey.currentState!.validate();
              });
            },
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: <Container>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: TextFormField(
                      decoration: const InputDecoration(             
                        labelText: 'Nombre completo',
                        hintText: 'Luis',
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'Campo obligatorio';
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.name,
                      controller: _fullName,
                      ),
                    ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Edad',
                        hintText: '25',
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'Campo obligatorio';
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      controller: _age,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Correo electrónico',
                        hintText: 'example@gmail.com',
                      ),
                      validator: (value) {
                        RegExp regex = RegExp(Validations.email);
                        if (value == null || value.isEmpty) {
                          return 'campo obligatorio';
                        } else if (!regex.hasMatch(value)) {
                          return 'Introduce un correo válido';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: _isButtomDisabled ? null : (){
                        print('${_fullName.text} ${_age.value} ${_email.value}');
                      }, 
                      child: const Text('Registrar')
                    ),
                  )
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}