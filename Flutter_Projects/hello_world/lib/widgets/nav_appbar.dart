import 'package:flutter/material.dart';
import 'package:hello_world/controllers/app_controller.dart';

class NavAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  const NavAppBar({super.key, required this.title});

  @override
  State<NavAppBar> createState() => _NavAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _NavAppBarState extends State<NavAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      //leading: GestureDetector(onTap: () {}, child: const Icon(Icons.menu)),
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
    );
  }
}
