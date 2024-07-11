import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class AnimatedBtn extends StatefulWidget {
  const AnimatedBtn({super.key});

  @override
  State<AnimatedBtn> createState() => _AnimatedBtnState();
}

class _AnimatedBtnState extends State<AnimatedBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClick = !isClick;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Color(0xffe7ecef),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 10,
                  inset: isClick,
                  offset: (isClick)?Offset(-10, -10):Offset(-15, -15)),

              BoxShadow(
                color: Color(0xffa7afa9),
                blurRadius: 10,
                inset: isClick,
                offset: (isClick)?Offset(10, 10):Offset(15, 15),
              ),
            ]),
      ),
    );
  }
}

bool isClick = false;