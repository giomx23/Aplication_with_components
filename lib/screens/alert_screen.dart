import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:fl_components/themes/app_theme.dart';

class AlertScreen extends StatelessWidget {

  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Title 1'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('This is the content of the alert')
            ],
          ),

          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), //PARA CERRAR EL MODAL PEQUEÑO
              child: const Text('Cancel', style: TextStyle(color: Colors.red))
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), //PARA CERRAR EL MODAL PEQUEÑO
              child: const Text('OK')
            )
          ],
        );
      }
    );
  }

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false, //TRUE => PARA CERRAR EL MODAL HACIENDO CLIC FUERA DEL FONDO BLANCO
      context: context,
      builder: (context){
        return AlertDialog(
          elevation: 5,
          title: const Text('Title'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('This is the content of the alert')
            ],
          ),

          actions: [
             TextButton(
              onPressed: () => Navigator.pop(context), //PARA CERRAR EL MODAL PEQUEÑO
              child: const Text('Cancel', style: TextStyle(color: Colors.red))
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), //PARA CERRAR EL MODAL PEQUEÑO
              child: const Text('OK')
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton( //ASÍ SE HACE UN BOTÓN ELEVADO
          // style: ElevatedButton.styleFrom( //ESTILO DEL BOTÓN
          //   backgroundColor: AppTheme.primary,
          //   shape: const StadiumBorder(), //BOTÓN CIRCULAR
          //   elevation: 0,
          // ),
          child: const Text('Show Alert'),

          //onPressed: () => displayDialogAndroid(context) //PARA VER LA ALERTA ANDROID
          //onPressed: () => displayDialogIOS(context) //PARA VER LA ALERTA IOS

          //FUNCION PARA LA ALERTA PARA SABER SI ES ANDROID O IOS
          onPressed: () => Platform.isAndroid
           ? displayDialogAndroid(context)
           : displayDialogIOS(context)

        ),
      ),
      floatingActionButton: FloatingActionButton( //ASÍ SE HACE UN FLOATINGACTIONBUTTON
        backgroundColor: AppTheme.primary,
        onPressed: () => Navigator.pop(context), //PARa REGRESAR AL INICO (HOMESCREEN)
        child: const Icon(Icons.close, color: Colors.white,)
        ),
    );
  }
}