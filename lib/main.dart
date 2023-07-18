import 'package:flutter/material.dart';
import 'package:icon_app/my_icon_icons.dart';

void main() {
  runApp(const IconApp());
}

class IconApp extends StatelessWidget {
  const IconApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ShaderMask(
            blendMode: BlendMode.modulate,
            shaderCallback: (bounds) => const LinearGradient(
                colors: [Colors.orange, Colors.deepPurple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.5, 0.5]).createShader(bounds),
            child: const Icon(
              MyIcon.arcDot,
              color: Colors.white,
              size: 200,
            ),
          ),
        ),
      ),
    );
  }
}
