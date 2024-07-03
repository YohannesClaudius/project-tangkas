import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/features/controllers/screens/profile/widgets/item_field.dart';

class SettingsField extends StatefulWidget {
  const SettingsField({
    super.key,
  });

  @override
  State<SettingsField> createState() => _SettingsFieldState();
}

bool _notification = false;


class _SettingsFieldState extends State<SettingsField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 7,
              offset: const Offset(0, 5),
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: const Text(
                  'Settings',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 10, 5),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: const Icon(
                        FontAwesomeIcons.bell,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(   
                      child: Text(
                        'Notifications',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            _notification ? 'On' : 'Off',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Switch(
                          value: _notification,
                          onChanged: (bool newValue) {
                            setState(() {
                              _notification = newValue;
                            });
                          },
                          activeColor: Colors.black,
                          activeTrackColor: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(color: Colors.white.withOpacity(0.5)),
              ),
              const ItemField(
                  iconData: FontAwesomeIcons.globe, text: 'Language', showArrowIcon: true,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(color: Colors.white.withOpacity(0.5)),
              ),
              const ItemField(
                  iconData: FontAwesomeIcons.question,
                  text: 'Help', showArrowIcon: true,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(color: Colors.white.withOpacity(0.5)),
              ),
              const ItemField(
                  iconData: FontAwesomeIcons.info,
                  text: 'About', showArrowIcon: true,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(color: Colors.white.withOpacity(0.5)),
              ),
              const ItemField(
                  iconData: FontAwesomeIcons.signOutAlt,
                  text: 'Log out', showArrowIcon: false,),
            ],
          ),
        ),
      ),
    );
  }
}