import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final imagePath;
  const MyTab({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
        child: Image.asset(imagePath),
      ),
    );
  }
}
