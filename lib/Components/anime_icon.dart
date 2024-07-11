import 'package:flutter/material.dart';

class AnimeIcon extends StatefulWidget {
  const AnimeIcon({super.key});

  @override
  State<AnimeIcon> createState() => _AnimeIconState();
}

class _AnimeIconState extends State<AnimeIcon> with TickerProviderStateMixin {
  bool _isPlay = false;
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_isPlay == false) {
            _animationController.forward();
            _isPlay = true;
          } else {
            _animationController.reverse();
            _isPlay = false;
          }
        },
        child: AnimatedIcon(
          key: UniqueKey(),
          color: Colors.black,
          size: 50,
          icon: AnimatedIcons.pause_play,
          progress: CurvedAnimation(
            parent: _animationController,
            curve: Curves.bounceInOut,
          ),
        ),
      ),
    );

  }
}
