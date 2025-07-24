import 'package:celebreak_project/config/const/dummy_data.dart';
import 'package:celebreak_project/presentation/home/widgets/about_section/about.dart';
import 'package:celebreak_project/presentation/home/widgets/custom_appbar.dart';
import 'package:celebreak_project/presentation/home/widgets/bottombar/custom_bottombar.dart';
import 'package:celebreak_project/presentation/home/widgets/football_skill_section.dart/football_skill_wrapper.dart';
import 'package:celebreak_project/presentation/home/widgets/interest_section/interest_wrap.dart';
import 'package:celebreak_project/presentation/home/widgets/kudos_section/kudos_card.dart';
import 'package:celebreak_project/presentation/home/widgets/profile_section/header.dart';
import 'package:celebreak_project/presentation/home/widgets/main_section_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/custom_button.dart';

/* ────────────────────────────────────────────────────────────────────────── */
/*  PANTALLA                                                                 */
/* ────────────────────────────────────────────────────────────────────────── */

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomButton(
                text: 'Message',
                textColor: const Color(0xFF060606),
                textSize: 16,
                fontWeight: FontWeight.w500,
                backgroundColor: const Color(0xFFFFB900),
                buttonWidth: double.infinity,
                buttonHeight: 44,
                buttonIcon: SvgPicture.asset(
                  'lib/config/assets/message_icon.svg',
                  color: const Color(0xFF060606),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: About(),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: KudosCard(),
            ),
            SizedBox(height: 24),
            MainSectionsDivider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: InterestsWrap(interests: myInterests),
            ),
            MainSectionsDivider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: FootballSkillsSection(skills: skillMap),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottombar(
        activeIndex: 0,
        items: bottomBarItems,
      ),
    );
  }
}
