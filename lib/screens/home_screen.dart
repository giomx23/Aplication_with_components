import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25), //PARA PONER BLANCO EL TÍTULO Y EL TAMAÑO
        title: const Text('My Aplication'),

      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon, color: AppTheme.primary), //PARA VISUALIZAR ICON0S DE LA LISTA DE RUTAS
          title: Text(menuOptions[index].name), //PARA VER LOS NOMBRES DE LAS RUTAS
          onTap: () {

            //UNA MANERA DE HACER LA NAVEGACIÓN ENTRE PANTALLAS
            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen()
            //   );
            // Navigator.push(context, route);

            //OTRA MANERA DE HACER UNA NAVEGACIÓN ENTRE PANTALLAS
            Navigator.pushNamed(context, menuOptions[index].route);

          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOptions.length,
        )
    );
  }
}