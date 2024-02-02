

import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.teal;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //COLOR PRIMARIO
    // primaryColor: Colors.teal,

    //APPBAR THEME
    appBarTheme: const AppBarTheme(
      backgroundColor: primary),

    //APPTEXTBUTTON THEME
    textButtonTheme: TextButtonThemeData(
      style:TextButton.styleFrom(primary: primary)
      ),

    //FloatingAction Buttom
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
      ),

    //ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom( //ESTILO DEL BOTÓN
        backgroundColor: primary,
        shape: const StadiumBorder(), //BOTÓN CIRCULAR
        elevation: 0,
        textStyle: const TextStyle(fontSize: 20)
       ),
    ),

    //INPUT DECORATION THEME
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle:
      TextStyle( color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
    )
  );
}