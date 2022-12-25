import 'package:fl_components/themes/app_theme_indigo.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      
      body : Column(
          children: [

              Slider.adaptive (
                value: _sliderValue,
                min: 0,
                max: 200,
                activeColor: AppThemeIndigo.primaryColor,
                label: '10',
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {

                  });
                  print(value);
                },
              ),

              Image(image: NetworkImage('https://img.fruugo.com/product/3/69/131338693_max.jpg'),
                    width: _sliderValue * 3,)

          ],
      )

    );
  }
}