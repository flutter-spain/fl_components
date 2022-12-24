import 'package:fl_components/router/app_routers.dart';
import 'package:flutter/material.dart';
// import 'package:fl_components/screens/screens.dart';

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
        itemBuilder: (BuildContext context, int index) {
          final option = AppRouter.menuOption[index];
          return ListTile(
            leading: Icon(option.icon),
            title: Text(option.name),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.pushNamed(context, option.route),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: AppRouter.menuOption.length)
    );
  }
}