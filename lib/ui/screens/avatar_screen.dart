import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stan Lee"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.teal[800],
              child: const Text("SL"),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage(
                'https://i.blogs.es/85aa44/stan-lee/450_1000.jpg')),
      ),
    );
  }
}
