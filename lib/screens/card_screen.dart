import 'package:fl_components/themes/app_theme_indigo.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

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
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(),
        ]
      )
    );
  }
}
