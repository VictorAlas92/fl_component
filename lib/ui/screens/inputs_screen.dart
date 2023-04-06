import 'package:fl_components/ui/widgets/widget.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Victor',
      'last_name': 'Alonso',
      'email': 'Victor@gmail.com',
      'password': '123',
      'rola': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const CustomInputField(
                      labelText: "Nombre",
                      hintText: "Nombre del usuario",
                      autofocus: true),
                  const SizedBox(height: 30),
                  const CustomInputField(
                      labelText: "Apellidos", hintText: "Apellidos"),
                  const SizedBox(height: 30),
                  const CustomInputField(
                      labelText: "Email",
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress),
                  const SizedBox(height: 30),
                  const CustomInputField(
                      labelText: "Password",
                      hintText: "Password",
                      obscureText: true),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print('formulario no valido');
                          return;
                        }
                        // * imprimir valores del formulario
                        print(formValues);
                      },
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar')))),
                ],
              ),
            ),
          ),
        ));
  }
}
