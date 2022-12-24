import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Gear', 'Castlevania', 'Metroid', 'Chrono Trigger'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView (
        children:  [
          ...options.map(
            (e) => ListTile(
              title: Text(e),
              subtitle: const Text('Pulse para entrar'),
              trailing: const Icon(Icons.keyboard_arrow_right),
            )
          ).toList(),
        ]
      )
    );
  }
}