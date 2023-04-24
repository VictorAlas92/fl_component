import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class sliderScreen extends StatefulWidget {
  const sliderScreen({super.key});

  @override
  State<sliderScreen> createState() => _sliderScreenState();
}

class _sliderScreenState extends State<sliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                divisions: 15,
                value: _sliderValue,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                }),
            Image(
              image: NetworkImage(
                  'https://imagen.research.google/main_gallery_images/a-photo-of-a-corgi-dog-riding-a-bike-in-times-square.jpg'),
              width: _sliderValue,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
