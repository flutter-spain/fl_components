import 'package:flutter/material.dart';

class customInputField extends StatelessWidget {

  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const customInputField({
    Key? key, 
    this.labelText, 
    this.hintText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType = TextInputType.text, 
    required this.obscureText, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      // initialValue: 'Marlon',
      textCapitalization: TextCapitalization.sentences,
      onChanged: ( value ) {
          formValues[formProperty] = value;
      },
      keyboardType: keyboardType,
      validator: (value) {
        if (value == null) return 'El valor no puede ser nulo';
        return value.length < 3 ? 'El valor es muy corto' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,

      obscureText: obscureText,
      
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