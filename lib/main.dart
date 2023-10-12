import 'package:flutter/material.dart';
import 'pages/register.dart';
import 'pages/login.dart';
import 'pages/accout.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dno',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 1, 3, 112)),
        useMaterial3: true,
      ),
      routes:{
        '/':(context) => const Login(title: 'Авторизация'),
        '/login':(context) => const Login(title: 'Авторизация'),
        '/home':(context) => const MyHomePage(title: 'dno chaos'),
        '/register':(context) => const Register(title: 'Регистрация'),
        '/account':(context) => const Account(title: 'Личный кабинет'),
      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight*0.1,
                decoration: const BoxDecoration(
                  borderRadius:BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Главная Станица"),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/account');
                        },
                      child: const Text("Личный кабитен"),
                    ),
                    // SizedBox(height: deviceHeight*0.4),
                  ],
                ),
              ),
              SizedBox(height: deviceHeight*0.4,),
              const Text(
                  'Дом'
              )
            ],
          )
        ),
      );
  }
}