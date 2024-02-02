import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Im a photography'),
            subtitle: Text('Laboris adipisicing in culpa aute qui culpa sint ex sint do reprehenderit nisi officia sit. Officia ea laborum dolor in culpa nulla sint.'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), //const EdgeInsets.only(right: 10) para aplicar el padding solo al lado derecho de los widgets button.
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){},
                child: const Text('Cancel'),
                ),
                 TextButton(onPressed: (){},
                child: const Text('OK')
                ),
              ],
            ),
          )
      ]),
    );
  }
}