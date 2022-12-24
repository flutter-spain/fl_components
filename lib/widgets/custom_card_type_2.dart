import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(image: NetworkImage('https://picsum.photos/2000?image=2'), 
          placeholder: AssetImage('assets/img/jar-loading.gif')),
        ]
      ),
    );
  }
}