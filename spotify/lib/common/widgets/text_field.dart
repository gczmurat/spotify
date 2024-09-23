import 'package:flutter/material.dart';

class BasicTextField extends StatelessWidget {
  final bool obscureText;
  final TextEditingController controller;
  final String hinText;
  final Widget? iconButton;
  const BasicTextField(
      {super.key, required this.controller, required this.hinText, this.iconButton,required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: hinText,
        suffixIcon: iconButton,
      ),
    );
  }
}
