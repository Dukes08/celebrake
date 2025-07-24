import 'package:flutter/material.dart';

class MainSectionsDivider extends StatelessWidget {
  const MainSectionsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Divider(height: 1, color: Color(0xFF303030)),
    );
  }
}
