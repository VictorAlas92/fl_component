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
            height: 20,
          ),
          CustomCardType2(
              imageUrl:
                  "https://i.natgeofe.com/n/7a91fd4f-a247-4269-8ef4-29a47a38f082/29-8946948_uploadsmember1375342yourshot-1375342-8946948jpg_leynmlnj32denspb46u2muavtdp3eflutfvvbpyjwjhzlmh4iziq_5856x3910.jpg?w=636&h=425"),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://i.natgeofe.com/n/625a1997-a51c-43d1-a4d5-3fcd8b01be60/35-9085088_uploadsmember53582yourshot-53582-9085088jpg_qum3toqaoeu7ndkcpdesvrzmypp3eflutfvvbpyjwjhzlmh4iziq_1620x1080.jpg?w=636&h=424',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://i.natgeofe.com/n/546177eb-3e84-441b-a803-dcb9b90d289c/18-9107552_uploadsmember1002418yourshot-1002418-9107552jpg_lyth7bok7fq25n2z6wx6k2xuitp3eflutfvvbpyjwjhzlmh4iziq_5216x3477.jpg?w=636&h=424',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            name: 'Un Hemoso Paisaje',
            imageUrl:
                'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6_4x3.jpg',
          ),
        ],
      ),
    );
  }
}
