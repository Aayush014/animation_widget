import 'package:flutter/material.dart';

class SlidTrans extends StatefulWidget {
  const SlidTrans({super.key});

  @override
  State<SlidTrans> createState() => _SlidTransState();
}

class _SlidTransState extends State<SlidTrans>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  )..repeat(reverse: true);
  late final Animation<Offset> _animation =
  Tween<Offset>(begin: Offset.zero, end: const Offset(0, 1.5)).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: Curves.elasticIn,
    ),
  );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SlideTransition(
        position: _animation,
        child: FlutterLogo(size: 50,),
      ),
    );
  }
}