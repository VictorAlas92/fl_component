import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class sliderScreen extends StatefulWidget {
  const sliderScreen({super.key});

  @override
  State<sliderScreen> createState() => _sliderScreenState();
}

class _sliderScreenState extends State<sliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              divisions: 15,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          // Checkbox(
          //     value: _sliderEnable,
          //     onChanged: (value) {
          //       _sliderEnable = value ?? true;
          //       setState(() {});
          //     }),

          // Switch(
          //     value: _sliderEnable,
          //     onChanged: (value) => setState(() {
          //           _sliderEnable = value;
          //         })),

          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                    _sliderEnable = value ?? true;
                  })),
          SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                    _sliderEnable = value;
                  })),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                  image: const NetworkImage(
                      'https://imagen.research.google/main_gallery_images/a-photo-of-a-corgi-dog-riding-a-bike-in-times-square.jpg'),
                  width: _sliderValue,
                  fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }
}
