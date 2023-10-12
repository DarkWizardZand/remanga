
import 'package:flutter/material.dart';

import '../auth/text_login.dart';
import '../auth/text_password.dart';


class Register extends StatefulWidget {
  const Register({super.key, required this.title});
  final String title;

  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  final TextEditingController taxEmail = TextEditingController();
  final TextEditingController taxPassword = TextEditingController();
  final TextEditingController taxRepeatPassword = TextEditingController();

  @override
Widget build(BuildContext context) {
    // double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: deviceHeight*0.25,),
              Center(
                child: Column(
                  children:[
                    TextLogin(tax:taxEmail), 
                    TextPassword(tax:taxPassword),
                    TextPassword(tax:taxRepeatPassword, text: "Repeat password",),
                    SizedBox(
                      child: TextButton(
                        style: TextButton.styleFrom(foregroundColor: Colors.amber,backgroundColor: Colors.black) ,
                        onPressed: () async{
                          if (taxPassword.text == taxRepeatPassword.text) {
                            Navigator.of(context).pushReplacementNamed("/home");
                          } else {
                          }},
                      child: const Text("Регистрация")),
                    )
                  ]
                ),
              ),
              SizedBox(height: deviceHeight*0.2,),
              Align(
                alignment: Alignment.bottomCenter,
                child:SizedBox(
                  child: Column(
                    children:[ 
                      const Text("Есть аккаунт?"),
                      TextButton(
                        style: TextButton.styleFrom(foregroundColor: Colors.amber,backgroundColor: Colors.black) ,
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed("/login");
                        },
                        child: const Text("Авторизация")
                        ),
                      
                    ]
                  )
                )
              )
            ],
            ),
        ),
      );
  }
}
