import 'package:fl_components/themes/app_theme_indigo.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;


  const CustomCardType2({Key? key, required this.imageUrl, this.name = 'Sin nombre'
  }) : super(key: key);
  

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
          FadeInImage(
          image: NetworkImage( imageUrl ), //NetworkImage('https://picsum.photos/2000?image=2'
          placeholder: const AssetImage('assets/img/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.all(10),
            child: Text(name ?? 'No Tile')
            ),
        ]
      ),
    );
  }
}