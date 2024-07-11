import 'package:flutter/material.dart';

class AnimePad extends StatefulWidget {
  const AnimePad({super.key});

  @override
  State<AnimePad> createState() => _AnimePadState();
}

class _AnimePadState extends State<AnimePad> {
  double _padValue = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _padValue = _padValue == 0 ? 50 : 0;
        });

      },
      child: AnimatedPadding(
        padding: EdgeInsets.all(_padValue),
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
        child: Container(
          height: 150,
          width: 150,
          color: Colors.green,
        ),
      ),
    );
  }
}