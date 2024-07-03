import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key, required this.index, 
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withAlpha(100),
      items: [
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(left: 40),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                icon: const Icon(Icons.home),
              ),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/bookmarks');
              },
              icon: const Icon(Iconsax.bookmark),
            ),
            label: 'Bookmarks'),
        BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 40),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/profile');
                },
                icon: const Icon(Iconsax.user),
              ),
            ),
            label: 'Profile'),
      ],
    );
  }
}
