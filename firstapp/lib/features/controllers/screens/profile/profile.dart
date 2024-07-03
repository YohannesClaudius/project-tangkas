import 'package:flutter/material.dart';
import 'package:news_app/features/controllers/screens/profile/widgets/account_field.dart';
import 'package:news_app/features/controllers/screens/profile/widgets/profile_header.dart';
import 'package:news_app/features/controllers/screens/profile/widgets/settings_field.dart';
import '../../../../common/widgets/navbar/bottom_navbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

// bool _notification = false;

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNavbar(index: 2),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: const [
          ProfileHeader(),
          AccountField(),
          SettingsField(),
        ],
      ),
    );
  }
}
