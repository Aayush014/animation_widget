import 'package:flutter/material.dart';

class AnimeDefTS extends StatefulWidget {
  const AnimeDefTS({super.key});

  @override
  State<AnimeDefTS> createState() => _AnimeDefTSState();
}

class _AnimeDefTSState extends State<AnimeDefTS> {
  bool _isClick = true;
  double _fontSize = 30;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _fontSize = _isClick ? 35 : 25;
            _color = _isClick ? Colors.blue : Colors.red;
            _isClick = !_isClick;
          });
        },
        child: AnimatedDefaultTextStyle(
          child: Text("Flutter"),
          style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold),
          duration: Duration(milliseconds: 300),
        ),
      ),
    );
  }
}