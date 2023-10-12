import 'package:dno/models/tokens/tokens.dart';
import 'package:flutter/material.dart';

Future<void> errorBuilder (BuildContext context, String title, String text,) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(text),
      );
    }
  );
}

Future<void> DialogRouting(context,String route) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Выход из аккаунта'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Вы уверенные что хотите выйти?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () =>  Navigator.pop(context, 'Cancel'),
          ),
          TextButton(
            child: const Text('ОК'),
            onPressed: () {
              if (Tokens == null) return;
                Navigator.of(context).pushReplacementNamed(route);
            },
          ),
        ],
      );
    },
  );
}