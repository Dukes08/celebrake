import 'package:celebreak_project/presentation/home/widgets/profile_section/profile_stats.dart';
import 'package:flutter/material.dart';

class ProfileData extends StatelessWidget {
  const ProfileData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 4),
            image: const DecorationImage(
              image: AssetImage('lib/config/assets/profile_picture.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),

        Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Alex Johnson',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              '@alexjohnson',
              style: TextStyle(fontSize: 14, color: Color(0xFFAEAEB2)),
            ),
            SizedBox(height: 8),
            ProfileStats(),
          ],
        ),
      ],
    );
  }
}
