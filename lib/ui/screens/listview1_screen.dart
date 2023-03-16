import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  final options = const ['Megaman', 'Zelda', 'Super Smash', "Howard's legacy"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 1'),
        ),
        body: ListView(
          children: [
            ...options.map(
              (game) => ListTile(
                leading: const Icon(Icons.abc),
                title: Text(game),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ],
        ));
  }
}
