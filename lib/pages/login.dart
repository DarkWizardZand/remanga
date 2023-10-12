import 'package:dno/models/tokens/tokens.dart';
import 'package:flutter/material.dart';
import '../auth/text_login.dart';
import '../auth/text_password.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});
  final String title;

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final TextEditingController taxEmail = TextEditingController();
  final TextEditingController taxPassword = TextEditingController();

  @override
Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: deviceHeight*0.3,),
            Center(
              child: Column(
                children:[
                  TextLogin(tax:taxEmail), 
                  TextPassword(tax:taxPassword),
                  SizedBox(
                    child: TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.blue) ,
                      onPressed: () async{
                        Navigator.of(context).pushReplacementNamed("/home");
                        },
                      child: const Text("Авторизация"))
                  ),
                ]
              ),
            ),
            SizedBox(height: deviceHeight*0.25,),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                child: Column(
                  children: [
                    const Text('Ещё нет аккаунта?',selectionColor: Colors.white),
                    TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.blue) ,
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("/register");
                        },
                      child: const Text("Регистрация"))
                        ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
