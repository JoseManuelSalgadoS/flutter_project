import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:first_project_learningb/kernel/validations/validations.dart';
import 'package:first_project_learningb/modules/forms/adapters/screens/first_form.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  bool _isButtomDisabled = true;

  final TextEditingController _password = TextEditingController(text: '');

  final TextEditingController _email = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cuenta'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'assets/images/logo-utez.png',
                    width: 200,
                    height: 150,
                  ),
                ),
                Form(
                    onChanged: () {
                      setState(() {
                        _isButtomDisabled = !_formKey.currentState!.validate();
                      });
                    },
                    key: _formKey,
                    child: Container(
                      padding: const EdgeInsets.all(50),
                      child: Column(
                        children: <Container>[
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
                            margin: const EdgeInsets.only(bottom: 16),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Contraseña',
                                hintText: '**********',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Campo obligatorio';
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.visiblePassword,
                              controller: _password,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/welcome');
                              },
                              child: const Text('Iniciar sesión'),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
