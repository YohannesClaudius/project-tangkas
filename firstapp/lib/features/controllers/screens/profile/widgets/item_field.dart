import 'package:flutter/material.dart';

class ItemField extends StatelessWidget {
  const ItemField({
    super.key,
    required this.iconData,
    required this.text,
    required this.showArrowIcon,
  });

  final IconData iconData;
  final String text;
  final bool showArrowIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Icon(
              iconData,
              color: Colors.black,
              size: 15,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
          if (showArrowIcon)
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
        ],
      ),
    );
  }
}
