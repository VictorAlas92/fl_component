import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(),
        ],
      ),
    );
  }
}
