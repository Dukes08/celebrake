import 'package:flutter/material.dart';

class EmojiContainer extends StatelessWidget {
  const EmojiContainer({super.key, required this.emoji});

  final String emoji;

  @override
  Widget build(BuildContext context) {
    const double size = 32;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: const Color(0xFF151515),
        shape: BoxShape.circle,
        border: Border.all(color: Color(0xFF303030), width: 3),
      ),
      alignment: Alignment.center,
      child: Text(emoji, style: const TextStyle(fontSize: 18)),
    );
  }
}
