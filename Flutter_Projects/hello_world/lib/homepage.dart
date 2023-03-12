import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  bool dark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PRO DIET'),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                // value: AppController.instance.isDarkTheme,
                onTap: () {
                  AppController.instance.changeTheme();
                  setState(() {});
                },
                child: Icon(
                  (AppController.instance.isDarkTheme == false)
                      ? Icons.dark_mode
                      : Icons.light_mode_outlined,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: Center(child: Text('PRO DIET $count')),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          }),
    );
  }
}
