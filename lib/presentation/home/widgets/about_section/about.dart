import 'package:celebreak_project/presentation/home/widgets/about_section/about_text.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Living life one goal at a time. Always ready for a match!',
          style: TextStyle(
            color: Color(0xFFAEAEB2),
            fontSize: 19,
            fontWeight: FontWeight.w400,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AboutText(
              icon: 'lib/config/assets/occupation.svg',
              beforeGrey: 'Event Planner ',
              greyWord: 'at ',
              afterGrey: 'CeleBreak',
            ),
            AboutText(
              icon: 'lib/config/assets/location.svg',

              greyWord: 'Lived in ',
              afterGrey: 'Buenos Aires, Frankfurt, Madrid',
            ),
            AboutText(
              icon: 'lib/config/assets/languages.svg',

              greyWord: 'Speaks ',
              afterGrey: 'English, Spanish, Catalan',
            ),
            AboutText(
              icon: 'lib/config/assets/favorite_teams.svg',

              greyWord: 'Supports ',
              afterGrey: 'Boca Juniors, FC Barcelona',
            ),
            AboutText(
              icon: 'lib/config/assets/favorite_players.svg',
              greyWord: 'Admires ',
              afterGrey: 'Patrick Vieia, Sergio Busquets, Lionel Messi',
            ),
          ],
        ),
      ],
    );
  }
}
