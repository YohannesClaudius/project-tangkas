import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/features/controllers/screens/profile/widgets/item_field.dart';

class AccountField extends StatelessWidget {
  const AccountField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
      child: Container(
        width: double.infinity,
        // height: 500,
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
                  'Account',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              const ItemField(
                  iconData: FontAwesomeIcons.user,
                  text: 'Account Details', showArrowIcon: true,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(color: Colors.white.withOpacity(0.5)),
              ),
              const ItemField(
                iconData: FontAwesomeIcons.lock,
                text: 'Privacy', showArrowIcon: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
