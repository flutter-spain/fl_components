import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Marlon',
      'last_name': 'Falcon',
      'email': 'demo@demo.cl',
      'password': '123',
      'role' : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Inputs'),
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Form(
          key: myFormKey,

          child: Column(
            children:  [
                
                customInputField( 
                      labelText: 'Nombre',
                      hintText: 'Ingrese su nombre',
                      helperText: 'Solo letras',
                      icon: Icons.person,
                      suffixIcon: Icons.accessibility_new,
                      obscureText: false,
                      formProperty: 'first_name',
                      formValues: formValues,
                    ),
            
                SizedBox(height: 20),
                
        
                customInputField( 
                      labelText: 'Apellidos',
                      hintText: 'Ingrese sus apellidos',
                      helperText: 'Solo letras',
                      icon: Icons.person,
                      suffixIcon: Icons.accessibility_new,
                      obscureText: false,
                      formProperty: 'last_name',
                      formValues: formValues,
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
                  formProperty: 'email',
                  formValues: formValues,
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
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 20),


                DropdownButtonFormField(
                    icon: const Icon(Icons.arrow_downward),
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Editor',
                        child: Text('Editor'),
                      ),
                      DropdownMenuItem(
                        value: 'Invitado',
                        child: Text('Invitado'),
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                    ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus( FocusNode() );

                    if ( !myFormKey.currentState!.validate() ) {
                      print("Formulario no valido");
                      return;
                    }

                    // Imprimir los valores del formulario
                    print('guardar');
                    print(formValues);
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  ))
            ],
          ),
        ),

      )
    );
  }
}

