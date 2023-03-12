import 'dart:io';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          // width: double.infinity,
          // height: double.infinity,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.file(
                //   File ('C:/Users/jacks/Pictures/Capturas de tela/Prodiet.png')
                // ),
                Container(
                    width: 250,
                    height: 150,
                    child: Image.asset('assets/images/Prodiet.png')),
                const SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    style: style,
                    onPressed: () {
                      if (email == 'jackson_sieben@live.com' &&
                          password == '123') {
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('login incorreto');
                      }
                    },
                    child: const Text("Entrar")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
