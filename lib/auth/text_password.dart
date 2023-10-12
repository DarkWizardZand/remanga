import 'package:flutter/material.dart';

class TextPassword extends StatelessWidget {
  const TextPassword({
    super.key,
    required this.tax, 
    this.text = "Пароль",
  });

  final TextEditingController tax;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      height: 70,
      child: TextField(
        controller:tax,
        obscureText: true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: text,
        ),
      ),
    );
  }
}