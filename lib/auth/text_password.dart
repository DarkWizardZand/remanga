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
        style: const TextStyle( backgroundColor: Color.fromARGB(0, 255, 254, 254),color: Color.fromARGB(255, 216, 216, 216)),
        controller:tax,
        obscureText: true,
        decoration:InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(30.0),borderSide: BorderSide.none ),
          focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(30.0),borderSide: const BorderSide(color: Colors.blue, width: 2) ),
          filled: true,
          fillColor: const Color.fromARGB(255,30,31,35),
          hintText: 'Почта или никнейм',
          hintStyle: const TextStyle(color:  Color.fromARGB(255,114,117,122)),
      ),
      )
    );
  }
}