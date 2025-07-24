import 'package:celebreak_project/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'presentation/home/views/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme().theme(),
      home: const HomePageView(),
    );
  }
}
