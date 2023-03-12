import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String id = "/login-screen"; 
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(22, 33, 62, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(),
    );
  }
}