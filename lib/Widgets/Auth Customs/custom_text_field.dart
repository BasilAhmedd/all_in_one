import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,this.obscure=false, required this.labelText, required this.controller, required this.icon});
  final String labelText;
  final TextEditingController controller;
  final Widget icon;
  bool obscure ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        labelText: labelText,
        suffixIcon: icon
      ),
      controller: controller,
      validator: (value) {
        if(value == null || value.trim().isEmpty){
          return "$labelText Can't be empty";
        }
      },
    );
  }
}
