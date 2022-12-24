import 'package:fl_components/themes/app_theme_indigo.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
        elevation: 0,
      ),
      body : ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children:  [
          Card(
            child: Column(
                children: const [
                  ListTile(
                    leading: Icon( Icons.album, color: AppThemeIndigo.primaryColor),
                    title: Text('The Enchanted Nightingale'),
                    subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  )
                ],
            )
          ),
        ]
      )
    );
  }
}