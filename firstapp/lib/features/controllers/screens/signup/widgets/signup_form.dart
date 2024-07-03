import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/text_strings.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

bool _isChecked = false;
bool _obscureText = true;

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Iconsax.user,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    labelText: TTexts.firstName,
                    labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Iconsax.user,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    labelText: TTexts.lastName,
                    labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),

          // Username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Iconsax.user_edit,
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
              labelText: TTexts.username,
              labelStyle: const TextStyle(fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          // Email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Iconsax.direct,
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
              labelText: TTexts.email,
              labelStyle: const TextStyle(fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          // Phone Number
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Iconsax.call,
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
              labelText: TTexts.phoneNo,
              labelStyle: const TextStyle(fontWeight: FontWeight.w600),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13.0),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),

          // Password
          TextFormField(
            obscureText: _obscureText,
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
            ),
          ),
          const SizedBox(
            height: 32,
          ),

          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
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
              ),
              const SizedBox(
                width: 16,
              ),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: '${TTexts.agreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w600)),
                  TextSpan(
                    text: '${TTexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        fontWeightDelta: 1),
                  ),
                  TextSpan(
                      text: 'and ',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w600)),
                  TextSpan(
                    text: '${TTexts.termsOfUse} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        fontWeightDelta: 1),
                  ),
                ]),
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),

          // SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.black,
              ),
              child: const Text(
                TTexts.createAccount,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
