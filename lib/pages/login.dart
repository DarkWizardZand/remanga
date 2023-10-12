
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
      backgroundColor: const Color(0xff171717),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: deviceHeight*0.2,),
            Center(
              child: Column(
                children:[
                  const Text(
                    "Вход в аккаунт",
                    style: TextStyle(fontSize: 30.0,color: Colors.white),
                    ),
                  TextLogin(tax:taxEmail), 
                  TextPassword(tax:taxPassword),
                  TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.blue) ,
                      onPressed: () async{
                        Navigator.of(context).pushReplacementNamed("/reset");
                        },
                      child: const Text("Я не помню пароль",style: TextStyle(fontSize: 18.0,))),
                  SizedBox(
                    child: TextButton(
                      style: TextButton.styleFrom(foregroundColor: Colors.white) ,
                      onPressed: () async{
                        Navigator.of(context).pushReplacementNamed("/home");
                        },
                      child: const Text("Войти", style: TextStyle(fontSize: 25.0,)))
                  ),
                ]
              ),
            ),
            SizedBox(height: deviceHeight*0.25,),
            SizedBox(
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                     icon: Image.asset('images/icons-vk.png'), iconSize: 25.0,  onPressed: () {}
                  ),
                  IconButton(
                     icon: Image.asset('images/icon-ya.png'),iconSize: 25.0, onPressed: () {}
                  ),
                  IconButton(
                     icon: Image.asset('images/icons-google.png'),iconSize: 25.0, onPressed: () {}
                  ),
                ]
              )
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Ещё нет аккаунта?',
                    style: TextStyle(fontSize: 15.0,color: Colors.white)
                  ),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.blue) ,
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/register");
                      },
                    child: const Text("Регистрация",style: TextStyle(fontSize: 15.0,)))
                      ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
