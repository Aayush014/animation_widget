import 'package:flutter/material.dart';

class RotationTrans extends StatefulWidget {
  const RotationTrans({super.key});

  @override
  State<RotationTrans> createState() => _RotationTransState();
}

class _RotationTransState extends State<RotationTrans> {
  double _turns = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnimatedRotation(
          turns: _turns,
          duration: Duration(seconds: 1),
          child: FlutterLogo(
            size: 80,
          ),
        ),
        ElevatedButton(onPressed: () {
          setState(() {
            _turns += 1/4;
          });
        }, child: Text("Turn"))
      ],
    );
  }
}