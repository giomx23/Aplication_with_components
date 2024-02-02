import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20.0),
          CustomCardType2( description: 'A beautiful sunset.',
          imagenURL: 'https://th.bing.com/th/id/R.195fcd8a7a2171e72cfb09df8c82204a?rik=JEnEi2nNfwf5sA&riu=http%3a%2f%2fhdqwalls.com%2fwallpapers%2fsunset-beach-cp.jpg&ehk=6yg0sCNVC4Q2s8xrrgXZ5XIvJLpmkRc1eEBq%2bAk%2fUPE%3d&risl=&pid=ImgRaw&r=0',),
          SizedBox(height: 20),
          CustomCardType2( description: 'A beautiful sunset at the ocean.',
          imagenURL: 'https://images.hdqwalls.com/wallpapers/sunset-dawn-dusk-sea-mood-93.jpg',),
          SizedBox(height: 20),
          CustomCardType2(imagenURL: 'https://images.hdqwalls.com/wallpapers/ocean-sunset-hd-hp.jpg', ),
        ],
      )
    );
  }
}

