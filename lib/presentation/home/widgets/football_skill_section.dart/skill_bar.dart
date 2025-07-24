import 'package:flutter/material.dart';

class SkillBar extends StatelessWidget {
  const SkillBar({
    super.key,
    required this.label,
    required this.value,
    required this.max,
  });

  final String label;
  final int value;
  final int max;

  @override
  Widget build(BuildContext context) {
    final double fraction = value / max;

    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                '$value/$max',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFAEAEB2),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          LayoutBuilder(
            builder: (context, constraints) {
              final barHeight = 4.0;
              final barWidth = constraints.maxWidth;

              return Stack(
                children: [
                  Container(
                    width: barWidth,
                    height: barHeight,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4B4B4B),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  Container(
                    width: barWidth * fraction,
                    height: barHeight,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFB900),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
