import 'package:flutter/material.dart';

class FadTrans extends StatefulWidget {
  const FadTrans({super.key});

  @override
  State<FadTrans> createState() => _FadTransState();
}

class _FadTransState extends State<FadTrans> with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    duration: const Duration(
      seconds: 2,
    ),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation _animation =
  CurvedAnimation(parent: _animationController, curve: Curves.easeIn);

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _animationController,
        child: FlutterLogo(
          size: 150,
        ),
      ),
    );
  }
}