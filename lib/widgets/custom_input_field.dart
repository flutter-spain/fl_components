import 'package:flutter/material.dart';

class customInputField extends StatelessWidget {

  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const customInputField({
    Key? key, 
    this.labelText, 
    this.hintText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      // initialValue: 'Marlon',
      textCapitalization: TextCapitalization.sentences,
      onChanged: ( value ) {
          print('value $value');
      },
      validator: (value) {
        if (value == null) return 'El valor no puede ser nulo';
        return value.length < 3 ? 'El valor es muy corto' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon:  suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        )
      ),
    
    );
  }
}