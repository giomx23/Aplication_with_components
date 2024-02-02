
import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';

//import 'package:fl_components/screens/listview_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Material App',

      initialRoute: AppRoutes.initialRoute, //RUTA DEL HOME

      routes: AppRoutes.getAppRoutes(), //TODAS LAS RUTAS

      //ESTO SE HACE CUANDO SE PONE UNA RUTA QUE NO SE ENCUENTRA EN ROUTES
      onGenerateRoute: ( settings ) => AppRoutes.onGenerateRoute(settings),
      theme: AppTheme.darkTheme,
    );
  }
}