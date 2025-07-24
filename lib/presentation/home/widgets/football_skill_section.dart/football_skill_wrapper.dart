import 'package:celebreak_project/presentation/home/widgets/football_skill_section.dart/skill_bar.dart';
import 'package:flutter/material.dart';

class FootballSkillsSection extends StatelessWidget {
  const FootballSkillsSection({
    super.key,
    required this.skills,
    this.maxScore = 5,
  });

  final Map<String, int> skills;
  final int maxScore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Football skills',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 24),

        ...skills.entries.map(
          (e) => SkillBar(label: e.key, value: e.value, max: maxScore),
        ),
      ],
    );
  }
}
