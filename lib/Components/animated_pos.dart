import 'package:flutter/material.dart';

class AnimatedPos extends StatefulWidget {
  const AnimatedPos({super.key});

  @override
  State<AnimatedPos> createState() => _AnimatedPosState();
}

class _AnimatedPosState extends State<AnimatedPos> {
  bool position = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  200,
      height: 350,
      child: Stack(alignment: Alignment.topCenter,

        children: [
          AnimatedPositioned(
            width: position ? 120:50,
            height: position ? 50:120,
            top: 2,
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  position = !position;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}