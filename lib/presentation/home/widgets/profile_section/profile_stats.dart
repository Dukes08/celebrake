import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    const dimGrey = Color(0xFF3C3C3E);

    Widget divider() => Container(
      width: 1,
      height: 16,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      color: dimGrey,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'lib/config/assets/flag_container.svg',
          width: 24,
          height: 16,
          fit: BoxFit.contain,
        ),
        const SizedBox(width: 8),

        const Text(
          '24 yo',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),

        SizedBox(width: 5),

        divider(),

        SizedBox(width: 5),

        SvgPicture.asset(
          'lib/config/assets/futbol_icon.svg',
          width: 16,
          height: 16,
          fit: BoxFit.contain,
        ),
        SizedBox(width: 5),
        const Text('DEF', style: TextStyle(color: Colors.white, fontSize: 14)),

        SizedBox(width: 5),

        divider(),

        SizedBox(width: 5),

        RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.white, fontSize: 14),
            children: [
              TextSpan(
                text: '241',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(text: ' games'),
            ],
          ),
        ),
      ],
    );
  }
}
