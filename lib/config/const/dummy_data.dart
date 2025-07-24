import 'package:celebreak_project/presentation/home/widgets/bottombar/bottombar_item.dart';

const List<String> myInterests = [
  '🎹 Playing piano / keyboard',
  '🧱 LEGOs',
  '📓 Journaling',
  '🥋 Martial arts',
  '🏄 Surfing',
  '💃 Salsa dancing',
  '🎮 Retro gaming',
  '📷 Photography',
];

const Map<String, int> skillMap = {'Technical': 4, 'Fitness': 5, 'Tactical': 1};

final bottomBarItems = <BottomBarItem>[
  BottomBarItem(label: 'Explore', iconPath: 'lib/config/assets/nav_games.svg'),
  BottomBarItem(label: 'Fields', iconPath: 'lib/config/assets/nav_fields.svg'),
  BottomBarItem(
    label: 'Messages',
    iconPath: 'lib/config/assets/nav_messages.svg',
  ),
  BottomBarItem(
    label: 'Profile',
    iconPath: 'lib/config/assets/nav_profile.svg',
  ),
];
