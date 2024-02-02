import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';


class CustomCardType2 extends StatelessWidget {

  final String imagenURL;
  final String ? description;

  const CustomCardType2({
    super.key,
    required this.imagenURL,
    this.description,
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5), //Color de la sombra y la opacidad de la card
      clipBehavior: Clip.antiAlias, //Borde redondeado
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15) //Borde redondeado de la card
      ),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imagenURL),
              placeholder: const AssetImage('assets/images/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),

            if( description != null )
              Container(
              alignment: AlignmentDirectional.centerEnd, //Para poner al lado derecho el texto
              padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
              child: Text( description ?? 'No description') //Esta descripcion sale si a la imagen no se le agrega una descripción
              )
        ],
      ),
    );
  }
}