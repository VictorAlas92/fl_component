import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.teal;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void onChanceShape() {
    final random = Random();

    // Generate a random width and height.
    _width = random.nextInt(300).toDouble() + 10;
    _height = random.nextInt(300).toDouble() + 10;

    // Generate a random color.
    _color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
      // random.nextDouble(),
    );

    // Generate a random border radius.
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          // color: Colors.red, //* no se puede tener el widget color junto con la propiedad
          //*decoration, por esto el color se mete dentro de decoration
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOutBack,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onChanceShape,
        child: const Icon(
          Icons.play_circle_outline,
          size: 40,
        ),
      ),
    );
  }
}
