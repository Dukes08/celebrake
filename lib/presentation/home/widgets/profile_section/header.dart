import 'package:celebreak_project/presentation/home/widgets/profile_section/profile_data.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final double headerHeight = MediaQuery.of(context).size.height * 0.35;

    return SizedBox(
      height: headerHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/config/assets/background_image.png',
            fit: BoxFit.cover,
          ),

          const Align(alignment: Alignment(0, 0.45), child: ProfileData()),
        ],
      ),
    );
  }
}
