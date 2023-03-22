import 'package:flutter/material.dart';

import 'widgets/nav_bar.dart';
import 'widgets/nav_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavAppBar(title: 'Home'),
      drawer: const NavDrawer(),
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
