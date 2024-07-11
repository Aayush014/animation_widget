import 'package:flutter/material.dart';

class AnimatedAli extends StatefulWidget {
  const AnimatedAli({super.key});

  @override
  State<AnimatedAli> createState() => _AnimatedAliState();
}

class _AnimatedAliState extends State<AnimatedAli> {
  bool ali = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          ali = !ali;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250,
          // color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: ali ? Alignment.topRight:Alignment.bottomLeft,
            duration: Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: 50,),
          ),
        ),
      ),
    );
  }
}