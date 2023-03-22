import 'package:flutter/material.dart';

import 'controllers/app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'cardapio_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
              theme: ThemeData(
                  primarySwatch: Colors.blueGrey,
                  brightness: AppController.instance.isDarkTheme
                      ? Brightness.dark
                      : Brightness.light //AppController.instance.isDartTheme
                  ),
              initialRoute: '/',
              routes: {
                '/': (context) => const LoginPage(),
                '/home': (context) => const HomePage(),
                '/cardapio': (context) => const CardapioPage(),
              });
        });
  }
}
