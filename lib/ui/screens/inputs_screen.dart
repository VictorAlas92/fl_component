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
      'role': 'Admin',
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
                  CustomInputField(
                      labelText: "Nombre",
                      hintText: "Nombre del usuario",
                      autofocus: true,
                      formProperty: 'first_name',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labelText: "Apellidos",
                      hintText: "Apellidos",
                      formProperty: 'last_name',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labelText: "Email",
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  CustomInputField(
                      labelText: "Password",
                      hintText: "Password",
                      obscureText: true,
                      formProperty: 'password',
                      formValues: formValues),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      /** la siquiente linea me ayuda a desaparecer el teclado cuando preciono
                       * el boton guardar
                       */
                      FocusScope.of(context).requestFocus(FocusNode());
                      /** el primer signo de admiracion es para hacer la negacion en el if
                      * el segundo ! es para decirle a flutter confia en mi aqui siempre
                      * vamos a tener un estado de lo contrario mandaria un error por que
                      * puede ser que la validacion llegue null
                      */

                      if (!myFormKey.currentState!.validate()) {
                        print('formulario no valido');
                        return;
                      }

                      // * imprimir valores del formulario
                      print(formValues);
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
