import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  static String routeName = '/AuthPage';
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Autenticação",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Column(),
    );
  }
}
