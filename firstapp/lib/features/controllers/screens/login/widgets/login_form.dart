import 'package:news_app/features/controllers/screens/home/home.dart';
import 'package:news_app/features/controllers/screens/signup/signup.dart';
import 'package:news_app/utils/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isChecked = false;
  bool _obscureText = true;

  final String _email = 'guest@gmail.com';
  final String _password = 'guest';

  String? _emailErrorText;
  String? _passwordErrorText;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            // Email
            TextFormField(
              controller: _emailController,
              onChanged: (_) {
                setState(() {
                  _emailErrorText = null; // Clear error text
                });
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Iconsax.direct_right,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
                labelText: TTexts.email,
                labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                errorText: _emailErrorText,
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            // Password
            TextFormField(
              obscureText: _obscureText,
              controller: _passwordController,
              onChanged: (_) {
                setState(() {
                  _passwordErrorText = null; // Clear error text
                });
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Iconsax.password_check,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Iconsax.eye_slash : Iconsax.eye,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
                labelText: TTexts.password,
                labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13.0),
                    borderSide: const BorderSide(
                      width: 20,
                    )),
                errorText: _passwordErrorText,
              ),
            ),
            const SizedBox(
              height: 8,
            ),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (value) {
                        setState(
                          () {
                            _isChecked = value!;
                          },
                        );
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.black,
                    ),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                // Forget Password
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    TTexts.forgetPassword,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            
            const SizedBox(
              height: 16,
            ),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)),
                  padding: const EdgeInsets.all(16),
                ),
                child: const Text(
                  TTexts.createAccount,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
