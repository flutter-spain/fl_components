import 'package:fl_components/themes/app_theme_indigo.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
          ),
      elevation: 10,
      shadowColor: AppThemeIndigo.primaryColor,
      child: Column(
        children:  [
          const FadeInImage(image: NetworkImage('https://picsum.photos/2000?image=2'), 
          placeholder: AssetImage('assets/img/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
          ),

          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.all(10),
            child: const Text('Una linda imagen')
            ),
        ]
      ),
    );
  }
}