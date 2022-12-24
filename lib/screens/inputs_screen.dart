import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Inputs'),
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: customInputField( 
                    labelText: 'Nombre',
                    hintText: 'Ingrese su nombre',
                    helperText: 'Solo letras',
                    icon: Icons.person,
                    suffixIcon: Icons.accessibility_new,
                  ),
              )
          ],
        ),

      )
    );
  }
}

