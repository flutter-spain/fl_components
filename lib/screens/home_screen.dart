import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: const Text('ListView Tipo 1'),
          leading: Icon(Icons.list, color: Colors.indigo),
          subtitle: const Text('Pulse para entrar'),
          trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.indigo),
          onTap: () {
            Navigator.pushNamed(context, 'listview1');
          },
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: 5)
    );
  }
}