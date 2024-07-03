import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Stack(
        children: [
          const Center(
            child: Image(
              image: AssetImage('images/profile/Frame.png'),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Olivia Rofrico Askara',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const ClipOval(
                      child: Image(
                        width: 130,
                        height: 130,
                        fit: BoxFit.cover,
                        image: AssetImage('images/profile/Profile.jpeg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
