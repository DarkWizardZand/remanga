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
        style:const TextStyle(color:  Colors.white),
        decoration:InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(30.0),borderSide: BorderSide.none ),
          focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(30.0),borderSide: const BorderSide(color: Colors.blue, width: 2) ),
          filled: true,
          fillColor: const Color.fromARGB(255,30,31,35),
          hintText: 'Почта или никнейм',
          hintStyle: const TextStyle(color:  Color.fromARGB(255,114,117,122)),
        ),
        
      ),
    );
  }
}
