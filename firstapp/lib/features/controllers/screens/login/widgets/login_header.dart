import 'package:news_app/utils/image_strings.dart';
import 'package:news_app/utils/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(top: 20 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Image(
            height: 120,
            image: AssetImage(TImages.appLogo),
          ),
          Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w700,
          )),
          const SizedBox(
            height: 8,
          ),
          Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.w500
          )),
        ],
      ),
    );
  }
}
