import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';

class Listview1Screen extends StatelessWidget {

  final options = const ['Fifa 24', 'Clash Royale', 'Pes 24', 'Halo 3'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile( title: Text(options[index]), //PARA MOSTRAR LA LISTA DE JUEGOS
        trailing: const Icon( //ICONO Y COLOR DE LOS ICONOS
          Icons.arrow_forward_ios_outlined, color: AppTheme.primary
          ),
        onTap: () {
          final game = options[index];
          print(game);
        },
        ),
        separatorBuilder: (context, index) => const Divider(),

        itemCount: options.length,
      )
    );
  }
}