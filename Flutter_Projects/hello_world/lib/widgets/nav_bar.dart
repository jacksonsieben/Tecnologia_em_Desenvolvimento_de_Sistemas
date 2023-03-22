import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget implements PreferredSizeWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text("Jackson Sieben"),
            accountEmail: const Text("jackson_sieben@live.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              child: const Text(
                "J",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => {Navigator.of(context).pushReplacementNamed('/home')},
          ),
          // ListTile(
          //   leading: const Icon(Icons.verified_user),
          //   title: const Text('Profile'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          // ListTile(
          //   leading: const Icon(Icons.settings),
          //   title: const Text('Settings'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          // ListTile(
          //   leading: const Icon(Icons.border_color),
          //   title: const Text('Feedback'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          ListTile(
              leading: const Icon(Icons.food_bank),
              title: const Text("Montar Cardápio"),
              //subtitle: Text("meus favoritos..."),
              //trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                debugPrint('toquei no cardapio');
                Navigator.of(context).pushReplacementNamed('/cardapio');
              }),
          ListTile(
              leading: const Icon(Icons.table_chart),
              title: const Text("Tabelas Macronutricionais"),
              //subtitle: Text("Tabela TACO..."),
              //trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                debugPrint('toquei no tabela');
              }),
          ListTile(
              leading: const Icon(Icons.people_alt),
              title: const Text("Clientes"),
              //subtitle: Text("Tabela TACO..."),
              //trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                debugPrint('toquei no clientes');
              }),
          ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text("Agenda"),
              //subtitle: Text("Tabela TACO..."),
              //trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                debugPrint('toquei no agenda');
              }),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pushReplacementNamed('/')},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
