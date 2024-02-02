import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {

  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 10),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 70, 70, 70),
              foregroundColor: Colors.white,
              child: Text('GN',),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://i.pinimg.com/originals/00/66/6c/00666cc67171a85fb9247b3386f622ce.jpg'),
         ),
      ),
    );
  }
}