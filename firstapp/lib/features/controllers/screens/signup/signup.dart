import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/common/widgets/signup_login/form_divider.dart';
import 'package:news_app/common/widgets/signup_login/social_buttons.dart';
import 'package:news_app/features/controllers/screens/signup/widgets/signup_form.dart';
import 'package:news_app/utils/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                height: 32,
              ),

              // Form
              const SignUpForm(),
              const SizedBox(
                height: 32,
              ),

              // Divider
              FormDivider(dividerText: TTexts.signUpWith.capitalize!),
              const SizedBox(
                height: 32,
              ),

              // Social Button
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
