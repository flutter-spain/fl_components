// fl-screen
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);
  
  

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void onChangeShape() {
      setState(() {
               final random = Random();
               _width = random.nextInt(300).toDouble();
               _height = random.nextInt(300).toDouble();
               _color = Color.fromRGBO(
                  random.nextInt(255), 
                  random.nextInt(255), 
                  random.nextInt(255), 
                  1
               );
               _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Screen'),
      ),
      
      body: Center(
         child : AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            // curve: Curves.fastOutSlowIn,
            curve: Curves.easeInOutCubic,
            
            width: _width,
            height: _height,
            // color: Colors.red,
            decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: _color,
            ),
         )
      ),

      floatingActionButton: FloatingActionButton(
         child: const Icon(Icons.play_arrow),
         onPressed: () {
            onChangeShape();
         },
      ),

    );
  }
}