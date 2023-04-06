import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixicon;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      //*con la propiedad onchange podemos recolectar el valor de lo que se esta escribiendo
      //*en tiempo real
      onChanged: (value) {
        print(value);
      },
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
