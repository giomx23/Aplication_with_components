import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {

  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Geovanny',
      'last_name' : 'Noh',
      'email'     : 'geovannynoh23@gmail.com',
      'password'  : 'gio000825',
      'role'      : 'Admi',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20), //ESPACIADO DEL APPBAR AL INPUT
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Ingresa tu nombre',
                helperText: 'Más de 3 carácteres',
                suffixIcon: Icons.supervised_user_circle_outlined,
                formProperty: 'first_name',
                formValues: formValues,
              ),

              const SizedBox(height: 20), //ESPACIADO ENTRE UN INPUT A OTRO

              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Ingresa tu apellido',
                helperText: 'Más de 3 carácteres',
                suffixIcon: Icons.supervised_user_circle_outlined,
                formProperty: 'last_name',
                formValues: formValues,
              ),

              const SizedBox(height: 20,),

              //CORREO
              CustomInputField(
                labelText: 'Correo',
                hintText: 'Ingresa tu correo electrónico',
                helperText: 'Más de 3 carácteres',
                suffixIcon: Icons.supervised_user_circle_outlined,
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),

              const SizedBox(height: 20,),

              //Contraseña
              CustomInputField(
                labelText: 'Contraseña',
                hintText: 'Ingresa tu contraseña',
                helperText: 'Más de 8 carácteres',
                suffixIcon: Icons.supervised_user_circle_outlined,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),

               const SizedBox(height: 20,),

               //INPUT DE SELECCION
               DropdownButtonFormField(
                value: 'Admin',
                items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                  DropdownMenuItem(value: 'Sr. Developer', child: Text('Sr. Developer')),
                  DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                ],
                onChanged: (value){
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                }
                ),

               const SizedBox(height: 20,),

               ElevatedButton(
                onPressed: () {

                  FocusScope.of(context).requestFocus(FocusNode());

                  if (!myFormKey.currentState!.validate()){
                    print('Formulario no válido');
                    return;
                  }

                  //*IMPRIMIR VALORES DEL FORMULARIO
                  print(formValues);
               },
               child: const SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text('Save', style: TextStyle(color: Colors.white)),
                  ),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
