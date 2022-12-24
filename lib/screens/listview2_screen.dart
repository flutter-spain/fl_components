import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Gear', 'Castlevania', 'Metroid', 'Chrono Trigger'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(options[index]),
          subtitle: const Text('Pulse para entrar'),
          trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.indigo),
          onTap: () {
            print('Pulsado ${options[index]}');
          },
        )
      ) 
    );
  }
}