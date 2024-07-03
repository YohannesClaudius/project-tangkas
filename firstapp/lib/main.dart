import 'package:news_app/features/controllers/screens/home/home.dart';
import 'package:news_app/features/controllers/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/controllers/screens/bookmark/bookmarks.dart';
import 'features/controllers/screens/profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData.light(), 
      darkTheme: ThemeData.dark(), 
      initialRoute: '/onboarding',
      debugShowCheckedModeBanner: false,
      routes: {
        '/onboarding': (context) => const OnBoardingScreen(),
        '/': (context) => const HomeScreen(),
        '/bookmarks': (context) => const BookmarksScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
