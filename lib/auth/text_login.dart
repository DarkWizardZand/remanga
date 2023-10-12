import 'package:flutter/material.dart';

class TextLogin extends StatelessWidget {
  final TextEditingController tax;
  const TextLogin({super.key, required this.tax});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      height: 70,
      child: TextField(
        controller:tax,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Почта или никнейм',
        ),
        
      ),
    );
  }
}
