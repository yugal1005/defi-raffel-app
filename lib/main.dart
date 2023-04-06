import 'package:defi_rafel_app/screens/home_screen.dart';
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
        primaryColor: const Color.fromRGBO(22, 33, 62, 1),
        cardColor: const Color.fromRGBO(15, 182, 132, 1),
        focusColor: const Color.fromRGBO(10, 57, 111, 1),
        highlightColor: const Color.fromRGBO(98, 224, 242, 1)
      ),
      routes: {
        "/":(context) => const SplashScreen(),
        LoginScreen.id:(context) => const LoginScreen(),
        HomeScreen.id:(context) => const HomeScreen(),
      },
    );
  }
}


