import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({super.key});

  final options = const ['Megaman', 'Zelda', 'Super Smash', "Howard's legacy"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(
                  Icons.abc,
                  color: Colors.indigo,
                ),
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo),
                onTap: () {},
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
