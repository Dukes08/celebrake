import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    super.key,
    this.icon,
    this.beforeGrey,
    this.greyWord,
    this.afterGrey,
  });

  final String? icon;
  final String? beforeGrey;
  final String? greyWord;
  final String? afterGrey;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const Color grey = Color(0xFFAEAEB2);
    const Color white = Colors.white;

    return Padding(
      padding: const EdgeInsets.only(top: 10.5),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(icon!, color: white, width: 22, height: 22),

            const SizedBox(width: 8),
            SizedBox(
              width: size.width * 0.8,
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 17, height: 1.4),
                  children: [
                    TextSpan(
                      text: beforeGrey,
                      style: const TextStyle(color: white),
                    ),
                    TextSpan(
                      text: greyWord,
                      style: const TextStyle(color: grey),
                    ),
                    TextSpan(
                      text: afterGrey,
                      style: const TextStyle(color: white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
