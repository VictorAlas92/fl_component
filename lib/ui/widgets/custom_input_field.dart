import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final bool autofocus;
  final bool obscureText;
  final IconData? icon;
  final IconData? suffixicon;
  final TextInputType? keyboardType;
  final String formProperty;
  final Map<String, dynamic> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixicon,
    this.autofocus = false,
    this.obscureText = false,
    this.keyboardType,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      //*con la propiedad onchange podemos recolectar el valor de lo que se esta escribiendo
      //*en tiempo real
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'este campo es requerido';
        return value.length < 3 ? 'minimo de 3 letras' : null;
      },
      //*autovalidateMode condiciona el momento en que inicia a ejectarse el Validator
      //* este tambien puede ser usado en la parte del formulario y el se encargara
      //*de revisar todos los formfields y condicionar sus validator
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 caracteres',
        suffixIcon: icon == null ? null : Icon(icon),
        // prefixIcon: Icon(Icons.group_rounded),
        icon: suffixicon == null ? null : Icon(suffixicon),
      ),
    );
  }
}
