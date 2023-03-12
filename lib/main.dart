import 'package:defi_rafel_app/screens/login_screen.dart';
import 'package:defi_rafel_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Defi Raffle',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(22, 33, 62, 1)
      ),
      routes: {
        "/":(context) => const SplashScreen(),
        LoginScreen.id:(context) => const LoginScreen()
      },
    );
  }
}


