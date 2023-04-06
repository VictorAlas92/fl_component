import 'package:fl_components/ui/widgets/widget.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: const [
                CustomInputField(
                    labelText: "Nombre",
                    hintText: "Nombre del usuario",
                    autofocus: true),
                SizedBox(height: 30),
                CustomInputField(
                  labelText: "Apellido Paterno",
                  hintText: "Apellido Paterno",
                ),
                SizedBox(height: 30),
                CustomInputField(
                  labelText: "Apellido Materno",
                  hintText: "Apellido Materno",
                ),
                SizedBox(height: 30),
                CustomInputField(
                  labelText: "Email",
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 30),
                CustomInputField(
                  labelText: "Password",
                  hintText: "Password",
                  obscureText: true,
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ));
  }
}
