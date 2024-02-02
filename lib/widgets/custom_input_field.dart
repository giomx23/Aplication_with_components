import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField( //UN FORMA PARA HACER UN FORMULARIO
      autofocus: false, //APARECE EL TECLADO AUTOMÁTICAMENTE AL INGRESAR A LA PANTALLA DE INPUTS
      textCapitalization: TextCapitalization.words, //CAPITALIZAR PALABRA POR PALABRA
      keyboardType: keyboardType, //PARA ENTRADA DE TECLADO CON @ CUANDO SEA EMAIL
      obscureText: obscureText, //PARA INPUT CON TIPO CONTRASEÑA
      onChanged: (value) { //PARA CAPTURAR LO QUE SE ESCRIBE
        formValues[formProperty] = value;
      },
      validator: (value) {
        if(value == null) return 'Requerido';
        return value.length < 3 ? 'Obligatorio' : null; //SI LA PALABRA TIENE MENOS DE 3 LETRAS, APARECE EL MENSAJE
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      //DECORACIÓN DEL INPUT
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
      ),
    );
  }
}