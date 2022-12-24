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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: const [
              
              customInputField( 
                    labelText: 'Nombre',
                    hintText: 'Ingrese su nombre',
                    helperText: 'Solo letras',
                    icon: Icons.person,
                    suffixIcon: Icons.accessibility_new,
                    obscureText: false,
                  ),
          
              SizedBox(height: 20),
              

              customInputField( 
                    labelText: 'Apellidos',
                    hintText: 'Ingrese sus apellidos',
                    helperText: 'Solo letras',
                    icon: Icons.person,
                    suffixIcon: Icons.accessibility_new,
                    obscureText: false,
                  ),

              SizedBox(height: 20),

              customInputField( 
                labelText: 'Email',
                hintText: 'Ingrese su email',
                helperText: 'Solo letras',
                icon: Icons.email,
                suffixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),

              SizedBox(height: 20),
              customInputField( 
                labelText: 'Password',
                hintText: 'Ingrese su password',
                helperText: 'Solo letras',
                icon: Icons.lock,
                suffixIcon: Icons.lock_open,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
          ],
        ),

      )
    );
  }
}

