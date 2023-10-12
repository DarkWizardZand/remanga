import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key, required this.title});
  final String title;

  @override
  State<Account> createState() => _Account();
}

class _Account extends State<Account> {
  final TextEditingController taxEmail = TextEditingController();
  final TextEditingController taxPassword = TextEditingController();

  @override
Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: deviceHeight*0.3,),
            Center(
              child: Column(
                children:[
                  SizedBox(
                    child:TextButton(
                      onPressed: () {

                        },
                      child: const Text("Выход из аккаунта"),
                    ),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
