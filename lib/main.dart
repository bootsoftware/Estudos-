import 'package:flutter/material.dart';
import 'package:tela_login/views/home.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Home Login'),
    );
  }
}
