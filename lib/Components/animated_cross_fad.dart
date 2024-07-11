import 'package:flutter/material.dart';

class AnimCrossFade extends StatefulWidget {
  const AnimCrossFade({super.key});

  @override
  State<AnimCrossFade> createState() => _AnimCrossFadeState();
}

class _AnimCrossFadeState extends State<AnimCrossFade> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _bool = !_bool;
        });
      },
      child: AnimatedCrossFade(
          firstChild: Container(
            color: Colors.yellow,
          ),
          secondChild: Container(
            color: Colors.green,
          ),
          crossFadeState:
          _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 2)),
    );
  }
}