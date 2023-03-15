import 'package:flutter/material.dart';

import 'widgets/nav_bar.dart';
import 'widgets/nav_appbar.dart';

class CardapioPage extends StatelessWidget {
  const CardapioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: NavDrawer(),
      appBar: NavAppBar(title: 'Cardapio'),
      body: Center(
        child: Text('Monte seu cardápio'),
      ),
    );
  }
}
