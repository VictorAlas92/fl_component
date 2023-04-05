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
              children: [
                TextFormField(
                  autofocus: true,
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
                  decoration: const InputDecoration(
                    hintText: 'name user',
                    labelText: 'Nombre',
                    helperText: 'Solo letras',
                    // counterText: '3 caracteres',
                    suffixIcon: Icon(Icons.group_outlined),
                    // prefixIcon: Icon(Icons.group_rounded),
                    icon: Icon(Icons.assignment_ind_outlined),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        // topLeft: Radius.circular(10),
                        // bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
