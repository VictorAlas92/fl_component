import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Magna esse minim exercitation ut magna laborum eu aute mollit duis amet.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('cancelar'),
                  // style: TextButton.styleFrom(primary: AppTheme.primary),
                ),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
