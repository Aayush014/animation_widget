import 'package:flutter/material.dart';

class AnimSwitcher extends StatefulWidget {
  const AnimSwitcher({super.key});

  @override
  State<AnimSwitcher> createState() => _AnimSwitcherState();
}

class _AnimSwitcherState extends State<AnimSwitcher> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Text(
            "$_count",
            key: ValueKey(_count),
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
            child: const Text("Add"))
      ],
    );
  }
}