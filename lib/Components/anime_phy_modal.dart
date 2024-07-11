import 'package:flutter/material.dart';

class AnimePhyModal extends StatefulWidget {
  const AnimePhyModal({super.key});

  @override
  State<AnimePhyModal> createState() => _AnimePhyModalState();
}

class _AnimePhyModalState extends State<AnimePhyModal> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isFlat = !_isFlat;
          });
        },
        child: AnimatedPhysicalModel(
          child: SizedBox(
            height: 100,
            width: 100,
            child: Icon(Icons.android),
          ),
          shape: BoxShape.rectangle,
          elevation: _isFlat ? 0 : 10,
          color: Colors.white,
          shadowColor: Colors.black,
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 500),
        ),
      ),
    );
  }
}