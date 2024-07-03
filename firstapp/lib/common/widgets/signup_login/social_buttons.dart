import 'package:news_app/utils/image_strings.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.5),
              borderRadius: BorderRadius.circular(50)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: 18, height: 18, image: AssetImage(TImages.google))),
        ),
        const SizedBox(width: 16,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.5),
              borderRadius: BorderRadius.circular(50)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: 18, height: 18, image: AssetImage(TImages.facebook))),
        ),
      ],
    );
  }
}
