import 'package:flutter/material.dart';

class ModalBar extends StatefulWidget {
  const ModalBar({super.key});

  @override
  State<ModalBar> createState() => _ModalBarState();
}

class _ModalBarState extends State<ModalBar>
    with SingleTickerProviderStateMixin {
  bool _isClick = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _animation;

  @override
  void initState() {
    ColorTween colorTween = ColorTween(
        begin: Colors.orange.withOpacity(0.5),
        end: Colors.blueGrey.withOpacity(0.5));
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = colorTween.animate(_animationController);
    _animatedModalBarrier = AnimatedModalBarrier(
      color: _animation,
      dismissible: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          width: 250,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isClick = true;
                    });
                    _animationController.reset();
                    _animationController.forward();
                    Future.delayed(const Duration(seconds: 3), () {
                      setState(() {
                        _isClick = false;
                      });
                    });
                  },
                  child: const Text("Click")),
              if (_isClick) _animatedModalBarrier
            ],
          ),
        )
      ],
    );
  }
}