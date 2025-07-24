import 'package:celebreak_project/presentation/home/widgets/kudos_section/emoji_container.dart';
import 'package:flutter/material.dart';

class KudosCard extends StatelessWidget {
  const KudosCard({
    super.key,
    this.kudos = 7,
    this.mainEmoji = '🧤',
    this.secondaryEmoji = '🤝',
  });

  final int kudos;
  final String mainEmoji;
  final String secondaryEmoji;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF151515),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 18,
                child: EmojiContainer(emoji: secondaryEmoji),
              ),
              EmojiContainer(emoji: mainEmoji),
            ],
          ),
          const SizedBox(width: 36),

          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                height: 1.2,
              ),
              children: [
                TextSpan(
                  text: '$kudos ',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const TextSpan(text: 'kudos received'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
