
import 'package:flutter/material.dart';

class AnimatedOpe extends StatefulWidget {
  const AnimatedOpe({super.key});

  @override
  State<AnimatedOpe> createState() => _AnimatedOpeState();
}

class _AnimatedOpeState extends State<AnimatedOpe> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 2),
          child: const FlutterLogo(
            size: 80,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
              });
            },
            child: const Text("Logo"))
      ],
    );
  }
}