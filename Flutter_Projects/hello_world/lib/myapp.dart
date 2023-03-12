import 'package:flutter/material.dart';
import 'package:hello_world/homeController.dart';

import 'app_controller.dart';
import 'homepage.dart';
import 'login_page.dart';

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
              });
        });
  }
}
