import 'package:flutter/material.dart';

import 'package:fl_components/ui/theme/app_theme.dart';
import 'package:fl_components/ui/screens/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.primary,
            ),
            title: Text(menuOptions[index].name),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context) => const ListView2Screen(),
              // );

              // Navigator.push(context, route);
              Navigator.pushNamed(context, menuOptions[index].route);
            },
          );
        },
      ),
    );
  }
}
