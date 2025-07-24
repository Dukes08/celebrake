import 'package:flutter/material.dart';

class BottomBarItem {
  BottomBarItem({required this.label, this.iconPath, this.iconData});

  final String label;
  final String? iconPath;
  final IconData? iconData;
}
