import 'package:news_app/common/widgets/signup_login/form_divider.dart';
import 'package:news_app/features/controllers/screens/login/widgets/login_form.dart';
import 'package:news_app/features/controllers/screens/login/widgets/login_header.dart';
import 'package:news_app/common/widgets/signup_login/social_buttons.dart';
import 'package:news_app/utils/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo, and something
              const LoginHeader(),

              // Form
              const LoginForm(),

              // Divider
              FormDivider(dividerText: TTexts.signInWith.capitalize!,),
              const SizedBox(height: 32,),

              // Footer
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}



