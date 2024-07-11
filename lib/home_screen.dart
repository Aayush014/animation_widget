import 'package:flutter/material.dart';
import 'Utils/all_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe7ecef),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: GridView.builder(
          itemCount: animWidget.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(15),
            child: animWidget[index],
          ),
        ),
      ),
    );
  }
}




