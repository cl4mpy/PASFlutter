import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextfield extends StatelessWidget {
  final String myHint;
  final double radius;
  final bool obsecureText;
  final TextEditingController txtController;
  final List<TextInputFormatter>? inputFormatter;

  const MyTextfield({
    super.key,
    required this.myHint,
    required this.radius,
    this.inputFormatter,
    required this.txtController,
    required this.obsecureText
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      inputFormatters: inputFormatter, // Pasang ke TextField bawaan
      obscureText: obsecureText,
      decoration: InputDecoration(
        hintText: myHint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}