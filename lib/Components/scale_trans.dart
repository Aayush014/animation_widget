import 'package:flutter/material.dart';

class ScaleTrans extends StatefulWidget {
  const ScaleTrans({super.key});

  @override
  State<ScaleTrans> createState() => _ScaleTransState();
}

class _ScaleTransState extends State<ScaleTrans> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _animation,
        child: const Icon(Icons.favorite,color: Colors.red,size: 150,),
      ),
    );
  }
}