import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';

class ListviewScreen extends StatelessWidget {

  final options = const ['Fifa 24', 'Clash Royale', 'Pes 24', 'Halo 3'];

  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (game) => ListTile( title: Text(game),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary,))
            ).toList()
        ],
      )
    );
  }
} 