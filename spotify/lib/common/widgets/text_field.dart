import 'package:flutter/material.dart';

class BasicTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinText;
  final Widget? iconButton;
  const BasicTextField(
      {super.key, required this.controller, required this.hinText, this.iconButton});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hinText,
        suffixIcon: iconButton,
      ),
    );
  }
}
