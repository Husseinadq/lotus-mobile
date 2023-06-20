import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  Widget _item(String title, Icon icon, String route, BuildContext ctx) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: (() {
        Navigator.of(ctx).pushReplacementNamed(route);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        AppBar(
          title: const Text('WAW'),
          automaticallyImplyLeading: false,
        ),
        const Divider(),
      ]),
    );
  }
}
